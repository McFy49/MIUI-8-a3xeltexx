.class final Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputChangeListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/hdmi/IHdmiInputChangeListener;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method static synthetic -get0(Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiInputChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiInputChangeListener;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .prologue
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiInputChangeListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-get12(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-get9(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->-set1(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
