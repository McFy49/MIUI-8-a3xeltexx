.class public Lcom/android/server/webkit/SystemImpl;
.super Ljava/lang/Object;
.source "SystemImpl.java"

# interfaces
.implements Lcom/android/server/webkit/SystemInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/SystemImpl$LazyHolder;
    }
.end annotation


# static fields
.field private static final PACKAGE_FLAGS:I = 0x100020c0

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_AVAILABILITY:Ljava/lang/String; = "availableByDefault"

.field private static final TAG_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final TAG_FALLBACK:Ljava/lang/String; = "isFallback"

.field private static final TAG_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final TAG_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final TAG_START:Ljava/lang/String; = "webviewproviders"

.field private static final TAG_WEBVIEW_PROVIDER:Ljava/lang/String; = "webviewprovider"


# instance fields
.field private final mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/webkit/SystemImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 15

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x0

    .local v10, "numFallbackPackages":I
    const/4 v9, 0x0

    .local v9, "numAvailableByDefaultPackages":I
    const/4 v8, 0x0

    .local v8, "numAvByDefaultAndNotFallback":I
    const/4 v11, 0x0

    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .local v12, "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v13, 0x1110004

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    const-string v5, "webviewproviders"

    invoke-static {v11, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :goto_0
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .local v7, "element":Ljava/lang/String;
    if-nez v7, :cond_1

    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    if-nez v9, :cond_9

    new-instance v5, Landroid/util/AndroidRuntimeException;

    const-string v13, "There must be at least one WebView package that is available by default"

    invoke-direct {v5, v13}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    :try_start_1
    const-string v5, "webviewprovider"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "packageName"

    const/4 v13, 0x0

    invoke-interface {v11, v13, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_3

    new-instance v5, Landroid/util/AndroidRuntimeException;

    const-string v13, "WebView provider in framework resources missing package name"

    invoke-direct {v5, v13}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v7    # "element":Ljava/lang/String;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Landroid/util/AndroidRuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error when parsing WebView config "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v5

    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v7    # "element":Ljava/lang/String;
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_3
    :try_start_3
    const-string v5, "description"

    const/4 v13, 0x0

    invoke-interface {v11, v13, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "description":Ljava/lang/String;
    if-nez v2, :cond_4

    new-instance v5, Landroid/util/AndroidRuntimeException;

    const-string v13, "WebView provider in framework resources missing description"

    invoke-direct {v5, v13}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    const-string v5, "true"

    const-string v13, "availableByDefault"

    const/4 v14, 0x0

    invoke-interface {v11, v14, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "availableByDefault":Z
    const-string v5, "true"

    const-string v13, "isFallback"

    const/4 v14, 0x0

    invoke-interface {v11, v14, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .local v4, "isFallback":Z
    new-instance v0, Landroid/webkit/WebViewProviderInfo;

    invoke-static {v11}, Lcom/android/server/webkit/SystemImpl;->readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewProviderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V

    .local v0, "currentProvider":Landroid/webkit/WebViewProviderInfo;
    iget-boolean v5, v0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-eqz v5, :cond_6

    add-int/lit8 v10, v10, 0x1

    iget-boolean v5, v0, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-nez v5, :cond_5

    new-instance v5, Landroid/util/AndroidRuntimeException;

    const-string v13, "Each WebView fallback package must be available by default."

    invoke-direct {v5, v13}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    const/4 v5, 0x1

    if-le v10, v5, :cond_6

    new-instance v5, Landroid/util/AndroidRuntimeException;

    const-string v13, "There can be at most one WebView fallback package."

    invoke-direct {v5, v13}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    iget-boolean v5, v0, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v5, :cond_7

    add-int/lit8 v9, v9, 0x1

    iget-boolean v5, v0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-nez v5, :cond_7

    add-int/lit8 v8, v8, 0x1

    :cond_7
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v0    # "currentProvider":Landroid/webkit/WebViewProviderInfo;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "availableByDefault":Z
    .end local v4    # "isFallback":Z
    :cond_8
    sget-object v5, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    const-string v13, "Found an element that is not a WebView provider"

    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_9
    if-nez v8, :cond_a

    new-instance v5, Landroid/util/AndroidRuntimeException;

    const-string v13, "There must be at least one WebView package that is available by default and not a fallback"

    invoke-direct {v5, v13}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/webkit/WebViewProviderInfo;

    invoke-interface {v12, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/webkit/WebViewProviderInfo;

    iput-object v5, p0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/webkit/SystemImpl;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/webkit/SystemImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/webkit/SystemImpl;
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/server/webkit/SystemImpl$LazyHolder;->-get0()Lcom/android/server/webkit/SystemImpl;

    move-result-object v0

    return-object v0
.end method

.method private static readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;
    .locals 5
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "signatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .local v0, "outerDepth":I
    :goto_0
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "signature"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .local v1, "signature":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "signature":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    const-string v4, "Found an element in a webview provider that is not a signature"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method


# virtual methods
.method public enableFallbackLogic(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "webview_fallback_logic_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const-string v3, "user"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .local v2, "userManager":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "userInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, p3, v3}, Lcom/android/server/webkit/SystemImpl;->enablePackageForUser(Ljava/lang/String;ZI)V

    goto :goto_0

    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method public enablePackageForUser(Ljava/lang/String;ZI)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz p2, :cond_0

    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v0, "enable "

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "disable "

    goto :goto_2
.end method

.method public getFactoryPackageVersion(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/high16 v1, 0x200000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    return v1
.end method

.method public getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p1, "configInfo"    # Landroid/webkit/WebViewProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const v2, 0x100020c0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1
.end method

.method public getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "webview_provider"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    return-object v0
.end method

.method public isFallbackLogicEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "webview_fallback_logic_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public killPackageDependents(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->killPackageDependents(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    invoke-static {p1}, Landroid/webkit/WebViewFactory;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result v0

    return v0
.end method

.method public systemIsDebuggable()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return v0
.end method

.method public uninstallAndDisablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/webkit/SystemImpl;->enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;Z)V

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/server/webkit/SystemImpl$1;

    invoke-direct {v3, p0, p1}, Lcom/android/server/webkit/SystemImpl$1;-><init>(Lcom/android/server/webkit/SystemImpl;Landroid/content/Context;)V

    const/4 v4, 0x6

    invoke-virtual {v2, p2, v3, v4}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newProviderName"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "webview_provider"

    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2    # "newProviderName":Ljava/lang/String;
    :cond_0
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
