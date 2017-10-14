.class final Lcom/android/server/display/LocalDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;,
        Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;,
        Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    }
.end annotation


# static fields
.field private static final BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

.field private static final DEBUG:Z = false

.field private static final PROPERTY_EMULATOR_CIRCULAR:Ljava/lang/String; = "ro.emulator.circular"

.field private static final TAG:Ljava/lang/String; = "LocalDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "local:"


# instance fields
.field private final mDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHotplugReceiver:Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/display/LocalDisplayAdapter;I)V
    .locals 0
    .param p1, "builtInDisplayId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/LocalDisplayAdapter;I)V
    .locals 0
    .param p1, "builtInDisplayId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/display/LocalDisplayAdapter;->BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .locals 6
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;

    .prologue
    const-string v5, "LocalDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    return-void
.end method

.method static getPowerModeForState(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private tryConnectDisplayLocked(I)V
    .locals 9
    .param p1, "builtInDisplayId"    # I

    .prologue
    invoke-static {p1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v2

    .local v2, "displayToken":Landroid/os/IBinder;
    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/view/SurfaceControl;->getDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    move-result-object v4

    .local v4, "configs":[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    if-nez v4, :cond_0

    const-string v1, "LocalDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No valid configs found for display device "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v2}, Landroid/view/SurfaceControl;->getActiveConfig(Landroid/os/IBinder;)I

    move-result v5

    .local v5, "activeConfig":I
    if-gez v5, :cond_1

    const-string v1, "LocalDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No active config found for display device "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v2}, Landroid/view/SurfaceControl;->getActiveColorMode(Landroid/os/IBinder;)I

    move-result v7

    .local v7, "activeColorMode":I
    if-gez v7, :cond_2

    const-string v1, "LocalDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to get active color mode for display device "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    :cond_2
    invoke-static {v2}, Landroid/view/SurfaceControl;->getDisplayColorModes(Landroid/os/IBinder;)[I

    move-result-object v6

    .local v6, "colorModes":[I
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .local v0, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-nez v0, :cond_4

    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .end local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;I[Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[II)V

    .restart local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .end local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .end local v4    # "configs":[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v5    # "activeConfig":I
    .end local v6    # "colorModes":[I
    .end local v7    # "activeColorMode":I
    :cond_3
    :goto_0
    return-void

    .restart local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v4    # "configs":[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .restart local v5    # "activeConfig":I
    .restart local v6    # "colorModes":[I
    .restart local v7    # "activeColorMode":I
    :cond_4
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[II)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_0
.end method

.method private tryDisconnectDisplayLocked(I)V
    .locals 2
    .param p1, "builtInDisplayId"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .local v0, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public registerLocked()V
    .locals 4

    .prologue
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    new-instance v1, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mHotplugReceiver:Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

    sget-object v2, Lcom/android/server/display/LocalDisplayAdapter;->BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .local v0, "builtInDisplayId":I
    invoke-direct {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "builtInDisplayId":I
    :cond_0
    return-void
.end method