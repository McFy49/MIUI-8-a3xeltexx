.class public Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkMonitorPhoneStateListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 760
    packed-switch p1, :pswitch_data_0

    .line 767
    const-string v0, "NetworkMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smart detection is disabled ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mSmartDetectionAvailable:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$4602(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 771
    :goto_0
    return-void

    .line 762
    :pswitch_0
    const-string v0, "NetworkMonitor"

    const-string v1, "Smart detection is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mSmartDetectionAvailable:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$4602(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    goto :goto_0

    .line 760
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
