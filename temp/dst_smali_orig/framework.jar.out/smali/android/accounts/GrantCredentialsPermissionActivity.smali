.class public Landroid/accounts/GrantCredentialsPermissionActivity;
.super Landroid/app/Activity;
.source "GrantCredentialsPermissionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRAS_ACCOUNT:Ljava/lang/String; = "account"

.field public static final EXTRAS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "authTokenType"

.field public static final EXTRAS_REQUESTING_UID:Ljava/lang/String; = "uid"

.field public static final EXTRAS_RESPONSE:Ljava/lang/String; = "response"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthTokenType:Ljava/lang/String;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mResultBundle:Landroid/os/Bundle;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    return-void
.end method

.method private getAccountLabel(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .local v1, "authenticatorTypes":[Landroid/accounts/AuthenticatorDescription;
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v0, v1

    .local v0, "N":I
    :goto_0
    if-ge v5, v0, :cond_1

    aget-object v2, v1, v5

    .local v2, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v6, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    iget-object v6, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/accounts/GrantCredentialsPermissionActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    iget v7, v2, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v4

    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    return-object v6

    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    return-object v6

    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v2    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_1
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    return-object v6
.end method

.method private newPackageView(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "packageLabel"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109009f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    const v1, 0x10203d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "response"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountAuthenticatorResponse;

    .local v1, "response":Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string v2, "canceled"

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    return-void

    :pswitch_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    iget v4, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "result":Landroid/content/Intent;
    const-string v1, "retry"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/accounts/GrantCredentialsPermissionActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    goto :goto_0

    .end local v0    # "result":Landroid/content/Intent;
    :pswitch_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    iget v4, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v5}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1020376
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v11, 0x1090067

    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->setContentView(I)V

    const v11, 0x10404e2

    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->setTitle(I)V

    const-string v11, "layout_inflater"

    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    iput-object v11, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .local v5, "extras":Landroid/os/Bundle;
    if-nez v5, :cond_0

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    return-void

    :cond_0
    const-string v11, "account"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    iput-object v11, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    const-string v11, "authTokenType"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    const-string v11, "uid"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .local v10, "pm":Landroid/content/pm/PackageManager;
    iget v11, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .local v7, "packages":[Ljava/lang/String;
    iget-object v11, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    if-eqz v11, :cond_1

    iget-object v11, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    if-nez v11, :cond_2

    :cond_1
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    return-void

    :cond_2
    if-eqz v7, :cond_1

    :try_start_0
    iget-object v11, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->getAccountLabel(Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "accountTypeLabel":Ljava/lang/String;
    const v11, 0x1020373

    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, "authTokenTypeView":Landroid/widget/TextView;
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v2, Landroid/accounts/GrantCredentialsPermissionActivity$1;

    invoke-direct {v2, p0, v1}, Landroid/accounts/GrantCredentialsPermissionActivity$1;-><init>(Landroid/accounts/GrantCredentialsPermissionActivity;Landroid/widget/TextView;)V

    .local v2, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/String;>;"
    const-string v11, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    iget-object v12, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v11

    iget-object v12, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v13, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v2, v14}, Landroid/accounts/AccountManager;->getAuthTokenLabel(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :cond_3
    const v11, 0x1020377

    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v11, 0x1020376

    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v11, 0x102036f

    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .local v8, "packagesListView":Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    array-length v12, v7

    :goto_0
    if-ge v11, v12, :cond_4

    aget-object v9, v7, v11

    .local v9, "pkg":Ljava/lang/String;
    const/4 v13, 0x0

    :try_start_1
    invoke-virtual {v10, v9, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .local v6, "packageLabel":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v6}, Landroid/accounts/GrantCredentialsPermissionActivity;->newPackageView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .end local v0    # "accountTypeLabel":Ljava/lang/String;
    .end local v1    # "authTokenTypeView":Landroid/widget/TextView;
    .end local v2    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/String;>;"
    .end local v6    # "packageLabel":Ljava/lang/String;
    .end local v8    # "packagesListView":Landroid/widget/LinearLayout;
    .end local v9    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    return-void

    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "accountTypeLabel":Ljava/lang/String;
    .restart local v1    # "authTokenTypeView":Landroid/widget/TextView;
    .restart local v2    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/String;>;"
    .restart local v8    # "packagesListView":Landroid/widget/LinearLayout;
    .restart local v9    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v6, v9

    .restart local v6    # "packageLabel":Ljava/lang/String;
    goto :goto_1

    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "packageLabel":Ljava/lang/String;
    .end local v9    # "pkg":Ljava/lang/String;
    :cond_4
    const v11, 0x1020372

    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v12, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x1020371

    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setAccountAuthenticatorResult(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    iput-object p1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    return-void
.end method
