.class public Lcom/android/internal/telephony/dataconnection/DctController;
.super Landroid/os/Handler;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_DATA_ATTACHED:I = 0x1f4

.field private static final EVENT_DATA_DETACHED:I = 0x258

.field private static final EVENT_DATA_DISCONNECTED:I = 0x320

.field private static final EVENT_EMERGENCY_CALL_TOGGLED:I = 0x2bc

.field private static final EVENT_EXECUTE_ALL_REQUESTS:I = 0x66

.field private static final EVENT_EXECUTE_REQUEST:I = 0x65

.field private static final EVENT_PROCESS_REQUESTS:I = 0x64

.field private static final EVENT_RELEASE_ALL_REQUESTS:I = 0x68

.field private static final EVENT_RELEASE_REQUEST:I = 0x67

.field private static final EVENT_RETRY_ATTACH:I = 0x69

.field private static final EVENT_SETTINGS_CHANGED:I = 0x6a

.field private static final EVENT_SUBSCRIPTIONS_CHANGED:I = 0x6b

.field private static final EVENT_SWITCH_DDS_FOR_MMS_DONE:I = 0x6c

.field private static final EVENT_VOICE_CALL_ENDED:I = 0x384

.field private static final EVENT_VOICE_CALL_STARTED:I = 0x385

.field private static final IN_CALL:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "DctController"

.field private static final OFFHOOK_CALL:I

.field private static sDctController:Lcom/android/internal/telephony/dataconnection/DctController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

.field private mDcSwitchStateHandler:[Landroid/os/Handler;

.field private mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

.field private mIsEmergencyPdnRequested:Z

.field public mModelChange:Z

.field private mNetworkFactory:[Landroid/net/NetworkFactory;

.field private mNetworkFactoryMessenger:[Landroid/os/Messenger;

.field private mNetworkFilter:[Landroid/net/NetworkCapabilities;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneNum:I

.field private mPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRspHandler:Landroid/os/Handler;

.field private mSubController:Lcom/android/internal/telephony/SubscriptionController;

.field private mSubInfoReady:Z

.field private mSubMgr:Landroid/telephony/SubscriptionManager;

.field private mfilter:Landroid/content/IntentFilter;


# direct methods
.method private constructor <init>([Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 11
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 334
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 108
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mModelChange:Z

    .line 117
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    .line 135
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 139
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DctController$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/dataconnection/DctController$1;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 147
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DctController$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/dataconnection/DctController$2;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mObserver:Landroid/database/ContentObserver;

    .line 233
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DctController$3;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/dataconnection/DctController$3;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    .line 286
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DctController$4;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/dataconnection/DctController$4;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DctController(): phones.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 336
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_2

    .line 337
    :cond_0
    if-nez p1, :cond_1

    .line 338
    const-string v4, "DctController(phones): UNEXPECTED phones=null, ignore"

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 414
    :goto_0
    return-void

    .line 340
    :cond_1
    const-string v4, "DctController(phones): UNEXPECTED phones.length=0, ignore"

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_2
    array-length v4, p1

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    .line 345
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 347
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v4, v4, [Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .line 348
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v4, v4, [Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    .line 349
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v4, v4, [Landroid/os/Handler;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    .line 350
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v4, v4, [Landroid/os/Messenger;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    .line 351
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v4, v4, [Landroid/net/NetworkFactory;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    .line 352
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v4, v4, [Landroid/net/NetworkCapabilities;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    .line 355
    const-string v4, "ro.multisim.simslotcount"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-le v4, v6, :cond_5

    .line 356
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubInfoReady:Z

    .line 360
    :goto_1
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mfilter:Landroid/content/IntentFilter;

    .line 361
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mfilter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v4, "QCOM"

    const-string v5, "QCOM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "QCOM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_ConfigSIMswap"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 364
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mfilter:Landroid/content/IntentFilter;

    const-string v5, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v4, :cond_7

    .line 369
    move v2, v0

    .line 370
    .local v2, "phoneId":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v5, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v6, v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DcSwitchStateMachine-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V

    aput-object v5, v4, v0

    .line 372
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->start()V

    .line 373
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    new-instance v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    aget-object v6, v6, v0

    invoke-direct {v5, v6, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;I)V

    aput-object v5, v4, v0

    .line 374
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    aput-object v5, v4, v0

    .line 376
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v3

    .line 379
    .local v3, "status":I
    if-nez v3, :cond_6

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DctController(phones): Connect success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 385
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 389
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 390
    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->updatePhoneBaseForIndex(ILcom/android/internal/telephony/PhoneBase;)V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 358
    .end local v0    # "i":I
    .end local v1    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v2    # "phoneId":I
    .end local v3    # "status":I
    :cond_5
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubInfoReady:Z

    goto/16 :goto_1

    .line 382
    .restart local v0    # "i":I
    .restart local v2    # "phoneId":I
    .restart local v3    # "status":I
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DctController(phones): Could not connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 393
    .end local v2    # "phoneId":I
    .end local v3    # "status":I
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    .line 394
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 395
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 398
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_sim_data_call"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v9, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 404
    const/4 v0, 0x0

    :goto_4
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v4, :cond_8

    .line 405
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v4

    const/16 v5, 0x384

    invoke-virtual {v4, p0, v5, v10}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 407
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v4

    const/16 v5, 0x385

    invoke-virtual {v4, p0, v5, v10}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 412
    :cond_8
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mIsEmergencyPdnRequested:Z

    goto/16 :goto_0
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/dataconnection/DctController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mIsEmergencyPdnRequested:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/dataconnection/DctController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseAllRequests(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/dataconnection/DctController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/dataconnection/DctController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/dataconnection/DctController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataSubIdForMMS(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/util/LocalLog;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DctController;->requestNetwork(Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseNetwork(Landroid/net/NetworkRequest;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DctController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/PhoneProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/DctController;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DctController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->broadcastDefaultDataSubIdForMMSCallback(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DctController;)[Landroid/net/NetworkFactory;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/dataconnection/DctController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/dataconnection/DctController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubInfoReady:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/dataconnection/DctController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubInfoReady:Z

    return p1
.end method

.method private apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;
    .locals 8
    .param p1, "nr"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 1058
    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1060
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_0

    invoke-virtual {v2, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v1, v4

    .line 1174
    :goto_0
    return-object v1

    .line 1067
    :cond_0
    const/4 v3, -0x1

    .line 1068
    .local v3, "type":I
    const/4 v1, 0x0

    .line 1070
    .local v1, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1071
    .local v0, "error":Z
    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1072
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1074
    :cond_1
    iget v5, p1, Landroid/net/NetworkRequest;->legacyType:I

    if-ne v5, v7, :cond_1f

    .line 1075
    const-string v1, "hipri"

    .line 1076
    const/4 v3, 0x5

    .line 1083
    :cond_2
    :goto_1
    invoke-virtual {v2, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1084
    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 1085
    :cond_3
    const-string v1, "mms"

    .line 1086
    const/4 v3, 0x2

    .line 1088
    :cond_4
    const-string v5, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_5
    const-string v5, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1099
    :cond_6
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1100
    if-eqz v1, :cond_7

    const/4 v0, 0x1

    .line 1101
    :cond_7
    const-string v1, "supl"

    .line 1102
    const/4 v3, 0x3

    .line 1104
    :cond_8
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1105
    if-eqz v1, :cond_9

    const/4 v0, 0x1

    .line 1106
    :cond_9
    const-string v1, "dun"

    .line 1107
    const/4 v3, 0x4

    .line 1109
    :cond_a
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1110
    if-eqz v1, :cond_b

    const/4 v0, 0x1

    .line 1111
    :cond_b
    const-string v1, "fota"

    .line 1112
    const/16 v3, 0xa

    .line 1114
    :cond_c
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1115
    if-eqz v1, :cond_d

    const/4 v0, 0x1

    .line 1116
    :cond_d
    const-string v1, "ims"

    .line 1117
    const/16 v3, 0xb

    .line 1119
    :cond_e
    invoke-virtual {v2, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1120
    if-eqz v1, :cond_f

    const/4 v0, 0x1

    .line 1121
    :cond_f
    const-string v1, "cbs"

    .line 1122
    const/16 v3, 0xc

    .line 1124
    :cond_10
    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1125
    if-eqz v1, :cond_11

    const/4 v0, 0x1

    .line 1126
    :cond_11
    const-string v1, "ia"

    .line 1127
    const/16 v3, 0xe

    .line 1129
    :cond_12
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1130
    if-eqz v1, :cond_13

    const/4 v0, 0x1

    .line 1131
    :cond_13
    const/4 v1, 0x0

    .line 1132
    const-string v5, "RCS APN type not yet supported"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 1135
    :cond_14
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1136
    if-eqz v1, :cond_15

    const/4 v0, 0x1

    .line 1137
    :cond_15
    const-string v1, "xcap"

    .line 1138
    const/16 v3, 0x1b

    .line 1141
    :cond_16
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1142
    if-eqz v1, :cond_17

    const/4 v0, 0x1

    .line 1143
    :cond_17
    const-string v1, "emergency"

    .line 1144
    const/16 v3, 0xf

    .line 1147
    :cond_18
    const/16 v5, 0x13

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1148
    if-eqz v1, :cond_19

    const/4 v0, 0x1

    .line 1149
    :cond_19
    const-string v1, "ent1"

    .line 1150
    const/16 v3, 0x1c

    .line 1154
    :cond_1a
    const/16 v5, 0x15

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1155
    if-eqz v1, :cond_1b

    const/4 v0, 0x1

    .line 1156
    :cond_1b
    const-string v1, "bip"

    .line 1157
    const/16 v3, 0x17

    .line 1161
    :cond_1c
    if-eqz v0, :cond_1d

    .line 1166
    const-string v5, "Multiple apn types specified in request - result is unspecified!"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 1168
    :cond_1d
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1e

    if-nez v1, :cond_20

    .line 1169
    :cond_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported NetworkRequest in Telephony: nr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    move-object v1, v4

    .line 1170
    goto/16 :goto_0

    .line 1079
    :cond_1f
    const-string v1, "default"

    .line 1080
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1172
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apnForNetworkRequest name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private broadcastDefaultDataSubIdForMMSCallback(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 926
    const/4 v0, 0x0

    .line 927
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 929
    .local v1, "success":Z
    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_0
    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 938
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 941
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 942
    const-string v2, "subscription"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 943
    const-string v2, "DctController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[broadcastDefaultDataSubIdForMMSCallback] subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", success="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 945
    return-void

    .line 927
    .end local v1    # "success":Z
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 2

    .prologue
    .line 318
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DctController.getInstance can\'t be called before makeDCTController()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method

.method private getRequestPhoneId(Landroid/net/NetworkRequest;)I
    .locals 11
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 1178
    iget-object v7, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v7}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v4

    .line 1180
    .local v4, "specifier":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1181
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v5

    .line 1183
    .local v5, "subId":I
    const-string v7, "ril.datacross.slotid"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1184
    .local v0, "crossPhoneId":I
    if-eq v0, v9, :cond_2

    .line 1185
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    .line 1186
    .local v6, "subIds":[I
    if-eqz v6, :cond_1

    array-length v7, v6

    if-nez v7, :cond_5

    .line 1187
    :cond_1
    const-string v7, "getRequestPhoneId : Abnormal case in MMS!"

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 1196
    .end local v6    # "subIds":[I
    :cond_2
    :goto_0
    const-string v7, "CTC"

    sget-object v8, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1213
    .end local v0    # "crossPhoneId":I
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 1215
    .local v1, "phoneId":I
    if-le v1, v9, :cond_4

    .line 1216
    const-string v7, "gsm.sim.state"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1217
    .local v2, "simStates":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1218
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1219
    .local v3, "slotState":[Ljava/lang/String;
    const-string v7, "QCOM"

    const-string v8, "QCOM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "ABSENT"

    aget-object v8, v3, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1221
    const-string v7, "persist.radio.dataprefer.slotId"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1222
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM state is Absent, phoneId will be set to dataprefer property. phoneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 1227
    .end local v2    # "simStates":Ljava/lang/String;
    .end local v3    # "slotState":[Ljava/lang/String;
    :cond_4
    return v1

    .line 1190
    .end local v1    # "phoneId":I
    .restart local v0    # "crossPhoneId":I
    .restart local v6    # "subIds":[I
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRequestPhoneId : set subId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v6, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 1191
    aget v5, v6, v10

    goto :goto_0

    .line 1211
    .end local v0    # "crossPhoneId":I
    .end local v5    # "subId":I
    .end local v6    # "subIds":[I
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .restart local v5    # "subId":I
    goto :goto_1
.end method

.method private getTopPriorityRequestPhoneId()I
    .locals 8

    .prologue
    .line 1010
    const/4 v5, 0x0

    .line 1011
    .local v5, "retRequestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    const/4 v2, 0x0

    .line 1012
    .local v2, "phoneId":I
    const/4 v3, -0x1

    .line 1015
    .local v3, "priority":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v6, :cond_2

    .line 1016
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1017
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1018
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 1019
    .local v4, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selectExecPhone requestInfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1020
    iget-object v6, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v6

    if-ne v6, v0, :cond_0

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->priority:I

    if-ge v3, v6, :cond_0

    .line 1022
    iget v3, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->priority:I

    .line 1023
    move-object v5, v4

    goto :goto_1

    .line 1015
    .end local v4    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1028
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    if-eqz v5, :cond_4

    .line 1029
    iget-object v6, v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v2

    .line 1040
    :cond_3
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTopPriorityRequestPhoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", priority = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1043
    return v2

    .line 1032
    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    array-length v6, v6

    if-ge v0, v6, :cond_3

    .line 1033
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleSync()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1034
    move v2, v0

    .line 1035
    goto :goto_2

    .line 1032
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private isInCall(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 831
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 832
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 833
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 835
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1231
    const-string v0, "DctController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1235
    const-string v0, "DctController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    return-void
.end method

.method public static makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 2
    .param p0, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    .line 326
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDctController: new DctController phones.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 328
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DctController;-><init>([Lcom/android/internal/telephony/PhoneProxy;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDctController: X sDctController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 331
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method

.method private onExecuteAllRequests(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExecuteAllRequests phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 755
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 756
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 757
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 758
    .local v1, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 759
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->onExecuteRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_0

    .line 762
    .end local v1    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    return-void
.end method

.method private onExecuteRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 8
    .param p1, "requestInfo"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 706
    if-eqz p1, :cond_0

    iget-boolean v5, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    if-nez v5, :cond_0

    .line 708
    const-string v5, "ril.datacross.slotid"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 709
    .local v1, "crossPhoneId":I
    if-eq v1, v6, :cond_1

    .line 710
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "apn":Ljava/lang/String;
    const-string v5, "mms"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "mms2"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 712
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onExecuteRequest : Skip! apn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 751
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "crossPhoneId":I
    :cond_0
    :goto_0
    return-void

    .line 717
    .restart local v1    # "crossPhoneId":I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onExecuteRequest request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 719
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v4

    .line 720
    .local v4, "phoneId":I
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    .line 723
    .local v3, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    const-string v5, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    if-eqz v5, :cond_2

    .line 727
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignore this request as service state isn`t in service, phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 731
    :cond_2
    iput v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executedPhoneId:I

    .line 732
    iput-boolean v7, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    .line 733
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .line 734
    .restart local v0    # "apn":Ljava/lang/String;
    iget-object v2, v3, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 736
    .local v2, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v7, :cond_4

    .line 737
    const-string v5, "default"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isWifiActualConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 738
    const-string v5, "onExecuteRequest Do not enable default apn when wifi connected"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 741
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->getLog()Landroid/util/LocalLog;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->incApnRefCount(Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 747
    :goto_1
    const-string v5, "default"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 748
    iput v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->enabledSlot:I

    goto/16 :goto_0

    .line 744
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->getLog()Landroid/util/LocalLog;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->incApnRefCount(Ljava/lang/String;Landroid/util/LocalLog;)V

    goto :goto_1
.end method

.method private onProcessRequest()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, -0x1

    .line 605
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getTopPriorityRequestPhoneId()I

    move-result v9

    .line 606
    .local v9, "requestedPhoneId":I
    const/4 v0, -0x1

    .line 608
    .local v0, "activePhoneId":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    array-length v11, v11

    if-ge v5, v11, :cond_0

    .line 609
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleSync()Z

    move-result v11

    if-nez v11, :cond_2

    .line 610
    move v0, v5

    .line 615
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onProcessRequest requestedPhoneId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", activePhoneId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 618
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v10

    .line 619
    .local v10, "subIdtest":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onProcessRequest check subId invalid or not subIdtest="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 620
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v11

    if-nez v11, :cond_3

    iget-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mIsEmergencyPdnRequested:Z

    if-nez v11, :cond_3

    .line 622
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onProcessRequest return if subId is invalid ,return subIdtest="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 703
    :cond_1
    :goto_1
    return-void

    .line 608
    .end local v10    # "subIdtest":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 626
    .restart local v10    # "subIdtest":I
    :cond_3
    if-ne v9, v13, :cond_4

    .line 629
    if-eq v0, v13, :cond_1

    .line 631
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v11, v11, v0

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->disconnectAll()I

    goto :goto_1

    .line 637
    :cond_4
    if-eq v0, v13, :cond_5

    if-ne v0, v9, :cond_e

    .line 638
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 639
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 640
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 641
    .local v8, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget v11, v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executedPhoneId:I

    if-ne v11, v13, :cond_6

    .line 642
    iget-object v11, v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v11

    if-ne v11, v9, :cond_6

    iget-boolean v11, v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    if-nez v11, :cond_6

    .line 644
    const-string v11, "ril.datacross.slotid"

    invoke-static {v11, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 645
    .local v2, "crossPhoneId":I
    if-eq v2, v13, :cond_7

    if-ne v2, v0, :cond_7

    .line 646
    iget-object v11, v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "apn":Ljava/lang/String;
    const-string v11, "mms"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "mms2"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 648
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onProcessRequest : Skip! apn = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 653
    .end local v1    # "apn":Ljava/lang/String;
    :cond_7
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v11, v11, v9

    invoke-virtual {v11, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connect(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)I

    goto :goto_2

    .line 657
    .end local v2    # "crossPhoneId":I
    .end local v8    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_8
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 658
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v11}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    .line 659
    .local v3, "defaultDataSubId":I
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v11, v3}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v4

    .line 660
    .local v4, "defaultPhoneId":I
    const-string v11, "ril.datacross.slotid"

    invoke-static {v11, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 661
    .local v7, "phoneIdForMMS":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onProcessRequest : mRequestInfos.size() = 0, phoneIdForMMS = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 662
    if-eq v7, v13, :cond_b

    if-eq v0, v13, :cond_9

    if-eq v0, v7, :cond_b

    .line 663
    :cond_9
    if-eq v0, v13, :cond_a

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v11, v11, v0

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleSync()Z

    move-result v11

    if-nez v11, :cond_a

    .line 664
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v11, v11, v0

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->disconnectAll()I

    goto/16 :goto_1

    .line 665
    :cond_a
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleSync()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 666
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v11, v11, v7

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connect(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)I

    goto/16 :goto_1

    .line 668
    :cond_b
    if-ne v7, v13, :cond_1

    if-eq v0, v13, :cond_c

    if-eq v0, v4, :cond_1

    .line 669
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onProcessRequest : restore DDS to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 670
    if-eq v0, v13, :cond_d

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v11, v11, v0

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleSync()Z

    move-result v11

    if-nez v11, :cond_d

    .line 671
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v11, v11, v0

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->disconnectAll()I

    goto/16 :goto_1

    .line 672
    :cond_d
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 673
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v11, v11, v4

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connect(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)I

    goto/16 :goto_1

    .line 680
    .end local v3    # "defaultDataSubId":I
    .end local v4    # "defaultPhoneId":I
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v7    # "phoneIdForMMS":I
    :cond_e
    const-string v11, "CTC"

    sget-object v12, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 700
    :cond_f
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v11, v11, v0

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->disconnectAll()I

    goto/16 :goto_1
.end method

.method private onReleaseAllRequests(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReleaseAllRequests phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 790
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 791
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 792
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 793
    .local v1, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget v2, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executedPhoneId:I

    if-ne v2, p1, :cond_0

    .line 794
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_0

    .line 797
    .end local v1    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    return-void
.end method

.method private onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 8
    .param p1, "requestInfo"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 765
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReleaseRequest request="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 766
    if-eqz p1, :cond_1

    .line 767
    const-string v4, "DctController.onReleaseRequest"

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    .line 768
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executedPhoneId:I

    if-eq v4, v6, :cond_1

    .line 769
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "apn":Ljava/lang/String;
    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executedPhoneId:I

    .line 771
    .local v3, "phoneId":I
    iput v6, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executedPhoneId:I

    .line 772
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .line 773
    .local v2, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 775
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->legacyType:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_0

    .line 776
    iput-boolean v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mIsEmergencyPdnRequested:Z

    .line 779
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->getLog()Landroid/util/LocalLog;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->decApnRefCount(Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 780
    iput-boolean v7, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    .line 781
    const-string v4, "default"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 782
    iput v6, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->enabledSlot:I

    .line 786
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v3    # "phoneId":I
    :cond_1
    return-void
.end method

.method private onRetryAttach(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getTopPriorityRequestPhoneId()I

    move-result v0

    .line 801
    .local v0, "topPriPhone":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRetryAttach phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " topPri phone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 803
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_0

    .line 804
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->retryConnect()V

    .line 806
    :cond_0
    return-void
.end method

.method private onSettingsChanged()V
    .locals 18

    .prologue
    .line 843
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v14}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v4

    .line 845
    .local v4, "dataSubId":I
    const/4 v2, -0x1

    .line 846
    .local v2, "activePhoneId":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    array-length v14, v14

    if-ge v6, v14, :cond_0

    .line 847
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v14, v14, v6

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleSync()Z

    move-result v14

    if-nez v14, :cond_3

    .line 848
    move v2, v6

    .line 854
    :cond_0
    const/4 v14, -0x1

    if-ne v2, v14, :cond_1

    .line 855
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v14, v4}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v10

    .line 856
    .local v10, "phoneId":I
    if-nez v10, :cond_4

    .line 857
    const/4 v2, 0x1

    .line 861
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onSettingsChange, activePhoneId = -1, set to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 865
    .end local v10    # "phoneId":I
    :cond_1
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v13

    .line 866
    .local v13, "subIds":[I
    if-eqz v13, :cond_2

    array-length v14, v13

    if-nez v14, :cond_5

    .line 867
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onSettingsChange, subIds null or length 0 for activePhoneId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 922
    :goto_2
    return-void

    .line 846
    .end local v13    # "subIds":[I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 859
    .restart local v10    # "phoneId":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 871
    .end local v10    # "phoneId":I
    .restart local v13    # "subIds":[I
    :cond_5
    const-string v14, "ril.datacross.slotid"

    const/4 v15, -0x1

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 872
    .local v3, "crossPhoneId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v14

    if-ne v14, v3, :cond_6

    .line 873
    const-string v14, "ril.datacross.slotid"

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onSettingsChange, data sub: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", active data sub: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget v15, v13, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "datacross: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 879
    const/4 v14, 0x0

    aget v14, v13, v14

    if-eq v14, v4, :cond_9

    .line 880
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 881
    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 882
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 883
    .local v11, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v14, v11, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v14, v14, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v14}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v12

    .line 884
    .local v12, "specifier":Ljava/lang/String;
    if-eqz v12, :cond_8

    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 885
    :cond_8
    iget-boolean v14, v11, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    if-eqz v14, :cond_7

    .line 886
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v14, v14, v2

    invoke-virtual {v14}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/PhoneBase;

    .line 889
    .local v9, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v5, v9, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 890
    .local v5, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v14, v15, :cond_7

    .line 891
    check-cast v5, Lcom/android/internal/telephony/dataconnection/DcTracker;

    .end local v5    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    add-int/lit16 v15, v2, 0x320

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v14, v15, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 893
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v14, v14, v2

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyWaitForDataDisconnected()V

    .line 895
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    add-int/lit16 v15, v2, 0x320

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    const-wide/16 v16, 0x1388

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 907
    .end local v8    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v9    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v11    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v12    # "specifier":Ljava/lang/String;
    :cond_9
    const-string v14, "only broadcast ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED when Data SubId & Active Data Subid is same."

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 909
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 910
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v14, 0x20000000

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 911
    const-string v14, "subscription"

    const/4 v15, 0x0

    aget v15, v13, v15

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 912
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v7, v15}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 917
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_a
    const/4 v6, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v6, v14, :cond_b

    .line 918
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v14, v14, v6

    check-cast v14, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->evalPendingRequest()V

    .line 917
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 921
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    goto/16 :goto_2
.end method

.method private onSubInfoReady()V
    .locals 4

    .prologue
    .line 1047
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubInfoReady mPhoneNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1048
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v2, :cond_0

    .line 1049
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getSubId()I

    move-result v1

    .line 1050
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubInfoReady handle pending requests subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1051
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    .line 1052
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->evalPendingRequest()V

    .line 1048
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1054
    .end local v1    # "subId":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    .line 1055
    return-void
.end method

.method private onSwitchDdsForMmsDone()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 588
    const-string v2, "ril.datacross.slotid"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 589
    .local v0, "crossPhoneId":I
    if-eq v0, v3, :cond_0

    .line 590
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 591
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwitchDdsForMmsDone(),crossPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 592
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->broadcastDefaultDataSubIdForMMSCallback(I)V

    .line 594
    .end local v1    # "subId":I
    :cond_0
    return-void
.end method

.method private onVoiceCallEnded()V
    .locals 3

    .prologue
    .line 820
    const-string v1, "onVoiceCallEnded"

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 821
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 822
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->isInCall()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVoiceCallEnded - isInCall id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notify OFFHOOK_CALL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 824
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyCallStateChanged(I)V

    .line 821
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 827
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    .line 828
    return-void
.end method

.method private onVoiceCallStarted()V
    .locals 3

    .prologue
    .line 810
    const-string v1, "onVoiceCallStarted"

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 811
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 812
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->isInCall(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVoiceCallStarted - isInCall id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notify IN_CALL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 814
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyCallStateChanged(I)V

    .line 811
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 817
    :cond_1
    return-void
.end method

.method private releaseNetwork(Landroid/net/NetworkRequest;)I
    .locals 7
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 536
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v4, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 537
    .local v2, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseNetwork request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", requestInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 538
    if-eqz v2, :cond_0

    const-string v3, "DctController.releaseNetwork"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    .line 540
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v4, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    .line 544
    const-string v3, "ril.datacross.slotid"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 545
    .local v1, "crossPhoneId":I
    if-eq v1, v5, :cond_2

    .line 546
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "apn":Ljava/lang/String;
    const-string v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "mms2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 548
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseNetwork : crossPhoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", skip processRequests()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 554
    .end local v0    # "apn":Ljava/lang/String;
    :goto_0
    return v6

    .line 553
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    goto :goto_0
.end method

.method private requestNetwork(Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)I
    .locals 10
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "priority"    # I
    .param p3, "l"    # Landroid/util/LocalLog;

    .prologue
    const/4 v9, 0x1

    .line 495
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestNetwork request="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", priority="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 496
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dctc.requestNetwork, priority="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 500
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v7, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 501
    .local v2, "oldRequestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "apn":Ljava/lang/String;
    :goto_0
    const-string v6, "ro.multisim.simslotcount"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-le v6, v9, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v6, v2, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    if-eqz v6, :cond_0

    const-string v6, "default"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 504
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "old request info = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 505
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v3

    .line 506
    .local v3, "pId":I
    iget v6, v2, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->enabledSlot:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    iget v6, v2, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->enabledSlot:I

    if-eq v3, v6, :cond_4

    .line 507
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    iget v7, v2, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->enabledSlot:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    .line 508
    .local v4, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v4, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 509
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->getLog()Landroid/util/LocalLog;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->decApnRefCount(Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 510
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    .line 511
    const-string v6, "clean up old request, it is maybe under switching"

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 517
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v3    # "pId":I
    .end local v4    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v7, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 518
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestNetwork replacing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v8, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 523
    :cond_1
    iget v6, p1, Landroid/net/NetworkRequest;->legacyType:I

    const/16 v7, 0xf

    if-ne v6, v7, :cond_2

    .line 524
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mIsEmergencyPdnRequested:Z

    .line 528
    :cond_2
    new-instance v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;-><init>(Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)V

    .line 529
    .local v5, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v7, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    .line 532
    return v9

    .line 501
    .end local v0    # "apn":Ljava/lang/String;
    .end local v5    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 513
    .restart local v0    # "apn":Ljava/lang/String;
    .restart local v3    # "pId":I
    :cond_4
    const-string v6, "same request happen on same slot, this should not happen"

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setDataSubIdForMMS(I)V
    .locals 13
    .param p1, "mmsSubId"    # I

    .prologue
    const/4 v12, -0x1

    .line 949
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v4

    .line 950
    .local v4, "ddsSubId":I
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 951
    .local v0, "activePhoneId":I
    const-string v8, "ril.datacross.slotid"

    invoke-static {v8, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 953
    .local v2, "crossPhoneId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setDataSubIdForMMS, DDS: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", MMS: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CrossPhoneId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 955
    if-eq v4, p1, :cond_5

    .line 957
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 958
    const-string v8, "ril.datacross.slotid"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 962
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 963
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 964
    .local v7, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[setDataSubIdForMMS] request="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 965
    iget-boolean v8, v7, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    if-eqz v8, :cond_0

    .line 967
    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    .line 968
    if-eq v0, v12, :cond_0

    .line 970
    iget-object v8, v7, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v1

    .line 971
    .local v1, "apn":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[setDataSubIdForMMS] activePhoneId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", apn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 972
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneBase;

    .line 973
    .local v6, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v3, v6, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 974
    .local v3, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->getLog()Landroid/util/LocalLog;

    move-result-object v8

    invoke-virtual {v3, v1, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->decApnRefCount(Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 975
    const-string v8, "default"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 976
    iput v12, v7, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->enabledSlot:I

    .line 979
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v8, v9, :cond_0

    .line 980
    check-cast v3, Lcom/android/internal/telephony/dataconnection/DcTracker;

    .end local v3    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    add-int/lit16 v9, v0, 0x320

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v9, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 982
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyWaitForDataDisconnected()V

    .line 984
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    add-int/lit16 v9, v0, 0x320

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x1388

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 992
    .end local v1    # "apn":Ljava/lang/String;
    .end local v6    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v7    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_2
    const-string v8, "CTC"

    sget-object v9, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_3
    const-string v8, "CTC"

    sget-object v9, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1006
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    :goto_1
    return-void

    .line 1004
    :cond_5
    const-string v8, "ril.datacross.slotid"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updatePhoneBaseForIndex(ILcom/android/internal/telephony/PhoneBase;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneBaseForIndex for phone index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    add-int/lit16 v2, p1, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 180
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    add-int/lit16 v2, p1, 0x258

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    add-int/lit16 v1, p1, 0x2bc

    invoke-virtual {p2, v0, v1, v3}, Lcom/android/internal/telephony/PhoneBase;->registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 190
    .local v7, "cm":Landroid/net/ConnectivityManager;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister TelephonyNetworkFactory for phone index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aget-object v0, v0, p1

    invoke-virtual {v7, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aput-object v3, v0, p1

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aput-object v3, v0, p1

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aput-object v3, v0, p1

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    aput-object v1, v0, p1

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 202
    const-string v0, "CTC"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_1
    const-string v0, "CTC"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 225
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "TelephonyNetworkFactory"

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v6, v1, p1

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkCapabilities;)V

    aput-object v0, v8, p1

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v0, v0, p1

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/net/NetworkFactory;->setScoreFilter(I)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v2, v2, p1

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    aput-object v1, v0, p1

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aget-object v0, v0, p1

    const-string v1, "Telephony"

    invoke-virtual {v7, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 231
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 417
    const-string v2, "DctController.dispose"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 418
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v1, v2, :cond_0

    .line 419
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 421
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    .line 422
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 426
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 428
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubInfoReady:Z

    .line 432
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v1, v2, :cond_1

    .line 433
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 434
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 432
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 438
    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mIsEmergencyPdnRequested:Z

    .line 440
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1472
    const-string v7, "DctController:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1474
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .local v0, "arr$":[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 1475
    .local v1, "dssm":Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1474
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1477
    .end local v0    # "arr$":[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .end local v1    # "dssm":Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v2

    .line 1478
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1480
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1481
    const-string v7, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1484
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1485
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRequestInfos["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1487
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v2

    .line 1488
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1490
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1491
    const-string v7, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1493
    const-string v7, "TelephonyNetworkFactories:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1494
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    .local v0, "arr$":[Landroid/net/NetworkFactory;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v6, v0, v4

    .line 1495
    .local v6, "tnf":Landroid/net/NetworkFactory;
    invoke-virtual {v6, p1, p2, p3}, Landroid/net/NetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1494
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1497
    .end local v6    # "tnf":Landroid/net/NetworkFactory;
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1498
    const-string v7, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1499
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1500
    return-void
.end method

.method executeAllRequests(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeAllRequests, phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 569
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 570
    return-void
.end method

.method executeRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 2
    .param p1, "request"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeRequest, request= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 564
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 565
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 448
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubInfoReady:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mIsEmergencyPdnRequested:Z

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x67

    if-eq v0, v1, :cond_0

    .line 449
    const-string v0, "handleMessage : mSubInfoReady = false, do not process it!"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 492
    :goto_0
    return-void

    .line 453
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Un-handled message ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onProcessRequest()V

    goto :goto_0

    .line 458
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onExecuteRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_0

    .line 461
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onExecuteAllRequests(I)V

    goto :goto_0

    .line 464
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_0

    .line 467
    :sswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseAllRequests(I)V

    goto :goto_0

    .line 470
    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onRetryAttach(I)V

    goto :goto_0

    .line 473
    :sswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onSettingsChanged()V

    goto :goto_0

    .line 476
    :sswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onSubInfoReady()V

    goto :goto_0

    .line 479
    :sswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onSwitchDdsForMmsDone()V

    goto :goto_0

    .line 483
    :sswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onVoiceCallStarted()V

    goto :goto_0

    .line 486
    :sswitch_a
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onVoiceCallEnded()V

    goto :goto_0

    .line 453
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6a -> :sswitch_6
        0x6b -> :sswitch_7
        0x6c -> :sswitch_8
        0x384 -> :sswitch_a
        0x385 -> :sswitch_9
    .end sparse-switch
.end method

.method processRequests()V
    .locals 1

    .prologue
    .line 558
    const-string v0, "processRequests"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 559
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 560
    return-void
.end method

.method releaseAllRequests(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseAllRequests, phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 579
    const/16 v0, 0x68

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 580
    return-void
.end method

.method releaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 2
    .param p1, "request"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseRequest, request= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 574
    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 575
    return-void
.end method

.method public retryAttach(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retryAttach, phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 584
    const/16 v0, 0x69

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 585
    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    .line 156
    if-nez p1, :cond_1

    .line 157
    const-string v2, "updatePhoneObject phone = null"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 162
    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    if-nez v1, :cond_2

    .line 163
    const-string v2, "updatePhoneObject phoneBase = null"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_3

    .line 169
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->updatePhoneBaseForIndex(ILcom/android/internal/telephony/PhoneBase;)V

    goto :goto_0

    .line 167
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
