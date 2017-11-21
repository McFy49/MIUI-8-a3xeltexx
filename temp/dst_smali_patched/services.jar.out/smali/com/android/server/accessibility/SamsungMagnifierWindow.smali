.class public final Lcom/android/server/accessibility/SamsungMagnifierWindow;
.super Ljava/lang/Object;
.source "SamsungMagnifierWindow.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MY_PID:I


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field private final mMagnificationSettingsObserver:Landroid/database/ContentObserver;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->MY_PID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    iput-object p2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v2, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-direct {v2, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hover_zoom_magnifier_size"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hover_zoom_value"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->configChanged()V

    return-void
.end method

.method private configChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->init(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private hideMagnifier()V
    .locals 4

    .prologue
    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "hideMagnifier()"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private moveWindow(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMovingStartedX()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4, v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMovingStartedX()F

    move-result v3

    sub-float v0, v2, v3

    .local v0, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMovingStartedY()F

    move-result v3

    sub-float v1, v2, v3

    .local v1, "dy":F
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v3

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v4

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateMagnificationSpec(FF)V

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    return-void
.end method

.method private sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getOriginalScreenBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v2

    move/from16 v21, v0

    .local v21, "original_refer_x":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getOriginalScreenBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v2

    move/from16 v22, v0

    .local v22, "original_refer_y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v2

    move/from16 v24, v0

    .local v24, "window_refer_x":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v2

    move/from16 v25, v0

    .local v25, "window_refer_y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getScale()I

    move-result v2

    int-to-float v0, v2

    move/from16 v23, v0

    .local v23, "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    new-array v9, v2, [Landroid/view/MotionEvent$PointerCoords;

    .local v9, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    new-array v8, v2, [Landroid/view/MotionEvent$PointerProperties;

    .local v8, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_0

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v8, v19

    aget-object v2, v8, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v9, v19

    aget-object v2, v9, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    aget-object v2, v9, v19

    aget-object v3, v9, v19

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v3, v3, v24

    div-float v3, v3, v23

    add-float v3, v3, v21

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v2, v9, v19

    aget-object v3, v9, v19

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float v3, v3, v25

    div-float v3, v3, v23

    add-float v3, v3, v22

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sec_touchscreen2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v12, 0x1

    .local v12, "mDisplayId":I
    :goto_1
    sget-object v2, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId of Injecting event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v18

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v20

    .local v20, "mEvent":Landroid/view/MotionEvent;
    const/high16 v2, 0x40000000    # 2.0f

    or-int p3, p3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-interface {v2, v0, v3, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_1
    sget-object v2, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendComputedMotionEvent - mEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v12    # "mDisplayId":I
    .end local v20    # "mEvent":Landroid/view/MotionEvent;
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method private setMagnificationSettings(Z)V
    .locals 9
    .param p1, "force"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hover_zoom_magnifier_size"

    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .local v3, "size":I
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hover_zoom_value"

    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .local v1, "scale":I
    sget-object v5, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMagnificationSettings: size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v5, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setScale(I)Z

    move-result v2

    .local v2, "scaleChanged":Z
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setWindowSize(I)Z

    move-result v4

    .local v4, "sizeChanged":Z
    if-nez v2, :cond_0

    if-nez v4, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateBoundOnScreen()V

    :try_start_0
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v6}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v8}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getScale()I

    move-result v8

    int-to-float v8, v8

    invoke-interface {v5, v6, v7, v8}, Landroid/hardware/display/IDisplayManager;->setMagnificationSettings(IIF)V

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v6}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .locals 2
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopMagnifier()V
    .locals 4

    .prologue
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "stopMagnifier()"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_magnifier"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    :cond_0
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->hideMagnifier()V

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMotionEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onMotionEvent: It is outside of Magnifier window"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, v5, v4, v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnCloseBtn(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onMotionEvent: isOnCloseBtn"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, v6}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setCloseMode(Z)V

    :cond_2
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isCloseMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->moveWindow(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onMotionEvent: isOnMagnifierWindowWithoutBorder"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindow(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnHandle(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnTouchArea(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_5
    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onMotionEvent: isOnBorder"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v1, v6, v2, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onMotionEvent: isOnMagnifierWindowWithoutBorder"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    :cond_7
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isCloseMode()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnCloseBtn(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->stopMagnifier()V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, v5, v4, v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onMotionEvent: isOnMagnifierWindowWithoutBorder"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    :cond_a
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onMotionEvent: isOnMagnifierWindowWithoutBorder"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method