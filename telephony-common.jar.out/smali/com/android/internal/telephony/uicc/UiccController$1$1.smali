.class Lcom/android/internal/telephony/uicc/UiccController$1$1;
.super Ljava/lang/Object;
.source "UiccController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccController$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/uicc/UiccController$1;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccController$1;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController$1$1;->this$1:Lcom/android/internal/telephony/uicc/UiccController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 525
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController$1$1;->this$1:Lcom/android/internal/telephony/uicc/UiccController$1;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 527
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "SIM count mismatch"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 528
    return-void
.end method