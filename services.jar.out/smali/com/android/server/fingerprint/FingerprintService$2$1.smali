.class Lcom/android/server/fingerprint/FingerprintService$2$1;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$2;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$2;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$2$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$2$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$2;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$200(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 179
    .local v0, "pm":Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$2$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$2;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I

    .line 182
    :cond_1
    return-void
.end method
