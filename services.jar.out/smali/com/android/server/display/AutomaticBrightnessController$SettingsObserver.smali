.class Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 434
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 435
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 439
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 441
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$400(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->post(Ljava/lang/Runnable;)Z

    .line 466
    return-void
.end method
