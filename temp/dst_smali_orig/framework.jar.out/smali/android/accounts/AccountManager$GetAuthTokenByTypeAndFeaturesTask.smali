.class Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;
.super Landroid/accounts/AccountManager$AmsTask;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAuthTokenByTypeAndFeaturesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/AccountManager$AmsTask;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final mAccountType:Ljava/lang/String;

.field final mAddAccountOptions:Landroid/os/Bundle;

.field final mAuthTokenType:Ljava/lang/String;

.field final mFeatures:[Ljava/lang/String;

.field volatile mFuture:Landroid/accounts/AccountManagerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final mLoginOptions:Landroid/os/Bundle;

.field final mMyCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNumAccounts:I

.field final synthetic this$0:Landroid/accounts/AccountManager;


# direct methods
.method static synthetic -set0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;I)I
    .locals 0

    iput p1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mNumAccounts:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Landroid/accounts/AccountManager;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "features"    # [Ljava/lang/String;
    .param p5, "activityForPrompting"    # Landroid/app/Activity;
    .param p6, "addAccountOptions"    # Landroid/os/Bundle;
    .param p7, "loginOptions"    # Landroid/os/Bundle;
    .param p9, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .local p8, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    iput-object p1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    invoke-direct {p0, p1, p5, p9, p8}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    iput-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    const/4 v0, 0x0

    iput v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mNumAccounts:I

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account type is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAccountType:Ljava/lang/String;

    iput-object p3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    iput-object p4, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFeatures:[Ljava/lang/String;

    iput-object p6, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAddAccountOptions:Landroid/os/Bundle;

    iput-object p7, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mLoginOptions:Landroid/os/Bundle;

    iput-object p0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x1f

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFeatures:[Ljava/lang/String;

    new-instance v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;

    invoke-direct {v3, p0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;-><init>(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;)V

    iget-object v4, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    .local v13, "result":Landroid/os/Bundle;
    iget v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mNumAccounts:I

    if-nez v0, :cond_2

    const-string v0, "authAccount"

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "accountName":Ljava/lang/String;
    const-string v0, "accountType"

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "accountType":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/accounts/AuthenticatorException;

    const-string v2, "account not in result"

    invoke-direct {v0, v2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    const-string v0, "accountAccessId"

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "accessId":Ljava/lang/String;
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v8, v9, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "account":Landroid/accounts/Account;
    const/4 v0, 0x1

    iput v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mNumAccounts:I

    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v2, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    iget-object v4, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v6, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void

    .end local v1    # "account":Landroid/accounts/Account;
    .end local v7    # "accessId":Ljava/lang/String;
    .end local v8    # "accountName":Ljava/lang/String;
    .end local v9    # "accountType":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v13}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->set(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13    # "result":Landroid/os/Bundle;
    :goto_0
    return-void

    :catch_0
    move-exception v10

    .local v10, "e":Landroid/accounts/AuthenticatorException;
    invoke-virtual {p0, v10}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v10    # "e":Landroid/accounts/AuthenticatorException;
    :catch_1
    move-exception v12

    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {p0, v12}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v12    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .local v11, "e":Landroid/accounts/OperationCanceledException;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->cancel(Z)Z

    goto :goto_0
.end method
