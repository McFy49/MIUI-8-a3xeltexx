.class public Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "TelephonyNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field private static final EVENT_ACTIVE_PHONE_SWITCH:I = 0x1

.field private static final EVENT_DEFAULT_SUBSCRIPTION_CHANGED:I = 0x3

.field private static final EVENT_NETWORK_RELEASE:I = 0x5

.field private static final EVENT_NETWORK_REQUEST:I = 0x4

.field private static final EVENT_SUBSCRIPTION_CHANGED:I = 0x2

.field private static final RELEASE:Z = false

.field private static final REQUEST:Z = true

.field private static final REQUEST_LOG_SIZE:I = 0x28

.field private static final TELEPHONY_NETWORK_SCORE:I = 0x32


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field private final mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field private final mDefaultRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field private final mInternalHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mIsDefault:Z

.field private mPhoneId:I

.field private final mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

.field private final mSpecificRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private mSubscriptionId:I

.field private final mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onActivePhoneSwitch()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onDefaultChange()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onNeedNetworkFor(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onReleaseNetworkFor(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onSubIdChange()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneSwitcher;Lcom/android/internal/telephony/SubscriptionController;Lcom/android/internal/telephony/SubscriptionMonitor;Landroid/os/Looper;Landroid/content/Context;ILcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 6
    .param p1, "phoneSwitcher"    # Lcom/android/internal/telephony/PhoneSwitcher;
    .param p2, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p3, "subscriptionMonitor"    # Lcom/android/internal/telephony/SubscriptionMonitor;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "phoneId"    # I
    .param p7, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyNetworkFactory["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, p5, v0, v4}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;

    invoke-direct {v0, p0, p4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;-><init>(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    invoke-direct {p0, p2, p6}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->makeNetworkFilter(Lcom/android/internal/telephony/SubscriptionController;I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->setScoreFilter(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    iput p6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyNetworkFactory["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->LOG_TAG:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->registerForActivePhoneSwitch(ILandroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->registerForSubscriptionChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->registerForDefaultDataSubscriptionChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->register()V

    return-void
.end method

.method private applyRequests(Ljava/util/HashMap;ZLjava/lang/String;)V
    .locals 4
    .param p2, "action"    # Z
    .param p3, "logStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/util/LocalLog;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/NetworkRequest;Landroid/util/LocalLog;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "networkRequest$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LocalLog;

    .local v0, "localLog":Landroid/util/LocalLog;
    invoke-virtual {v0, p3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v3, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v3, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->releaseNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    goto :goto_0

    .end local v0    # "localLog":Landroid/util/LocalLog;
    .end local v1    # "networkRequest":Landroid/net/NetworkRequest;
    :cond_1
    return-void
.end method

.method private makeNetworkFilter(I)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "subscriptionId"    # I

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .local v0, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method private makeNetworkFilter(Lcom/android/internal/telephony/SubscriptionController;I)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p2, "phoneId"    # I

    .prologue
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .local v0, "subscriptionId":I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->makeNetworkFilter(I)Landroid/net/NetworkCapabilities;

    move-result-object v1

    return-object v1
.end method

.method private onActivePhoneSwitch()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/PhoneSwitcher;->isPhoneActive(I)Z

    move-result v1

    .local v1, "newIsActive":Z
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    if-eq v2, v1, :cond_1

    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivePhoneSwitch("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "logString":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-direct {p0, v5, v2, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->applyRequests(Ljava/util/HashMap;ZLjava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    if-eqz v5, :cond_3

    :goto_1
    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->applyRequests(Ljava/util/HashMap;ZLjava/lang/String;)V

    .end local v0    # "logString":Ljava/lang/String;
    :cond_1
    return-void

    .restart local v0    # "logString":Ljava/lang/String;
    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method private onDefaultChange()V
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .local v1, "newDefaultSubscriptionId":I
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    .local v2, "newIsDefault":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    if-eq v2, v3, :cond_2

    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDefaultChange("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "logString":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    if-nez v3, :cond_1

    return-void

    .end local v0    # "logString":Ljava/lang/String;
    .end local v2    # "newIsDefault":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "newIsDefault":Z
    goto :goto_0

    .restart local v0    # "logString":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0, v4, v3, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->applyRequests(Ljava/util/HashMap;ZLjava/lang/String;)V

    .end local v0    # "logString":Ljava/lang/String;
    :cond_2
    return-void

    .restart local v0    # "logString":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private onNeedNetworkFor(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x28

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkRequest;

    .local v2, "networkRequest":Landroid/net/NetworkRequest;
    const/4 v0, 0x0

    .local v0, "isApplicable":Z
    const/4 v1, 0x0

    .local v1, "localLog":Landroid/util/LocalLog;
    iget-object v4, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "localLog":Landroid/util/LocalLog;
    check-cast v1, Landroid/util/LocalLog;

    .local v1, "localLog":Landroid/util/LocalLog;
    if-nez v1, :cond_0

    new-instance v1, Landroid/util/LocalLog;

    .end local v1    # "localLog":Landroid/util/LocalLog;
    invoke-direct {v1, v5}, Landroid/util/LocalLog;-><init>(I)V

    .restart local v1    # "localLog":Landroid/util/LocalLog;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "created for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    .end local v0    # "isApplicable":Z
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    const-string v3, "onNeedNetworkFor"

    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v4, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    :goto_1
    return-void

    .end local v3    # "s":Ljava/lang/String;
    .restart local v0    # "isApplicable":Z
    .local v1, "localLog":Landroid/util/LocalLog;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "localLog":Landroid/util/LocalLog;
    check-cast v1, Landroid/util/LocalLog;

    .local v1, "localLog":Landroid/util/LocalLog;
    if-nez v1, :cond_0

    new-instance v1, Landroid/util/LocalLog;

    .end local v1    # "localLog":Landroid/util/LocalLog;
    invoke-direct {v1, v5}, Landroid/util/LocalLog;-><init>(I)V

    .restart local v1    # "localLog":Landroid/util/LocalLog;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    .end local v0    # "isApplicable":Z
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not acting - isApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isAct="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onReleaseNetworkFor(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkRequest;

    .local v2, "networkRequest":Landroid/net/NetworkRequest;
    const/4 v1, 0x0

    .local v1, "localLog":Landroid/util/LocalLog;
    const/4 v0, 0x0

    .local v0, "isApplicable":Z
    iget-object v4, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "localLog":Landroid/util/LocalLog;
    check-cast v1, Landroid/util/LocalLog;

    .local v1, "localLog":Landroid/util/LocalLog;
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    .end local v0    # "isApplicable":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    const-string v3, "onReleaseNetworkFor"

    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v4, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->releaseNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    :goto_1
    return-void

    .end local v3    # "s":Ljava/lang/String;
    .restart local v0    # "isApplicable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .local v1, "localLog":Landroid/util/LocalLog;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "localLog":Landroid/util/LocalLog;
    check-cast v1, Landroid/util/LocalLog;

    .local v1, "localLog":Landroid/util/LocalLog;
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .end local v0    # "isApplicable":Z
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not releasing - isApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isAct="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onSubIdChange()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .local v0, "newSubscriptionId":I
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubIdChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->makeNetworkFilter(I)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .local v2, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsActive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsDefault="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "Default Requests:"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "nr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    .local v0, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LocalLog;

    invoke-virtual {v3, p1, v2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_0

    .end local v0    # "nr":Landroid/net/NetworkRequest;
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
