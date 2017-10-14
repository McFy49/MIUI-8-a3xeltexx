.class Lcom/android/server/display/NightDisplayService$TwilightAutoMode;
.super Lcom/android/server/display/NightDisplayService$AutoMode;
.source "NightDisplayService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NightDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwilightAutoMode"
.end annotation


# instance fields
.field private mLastActivatedTime:Ljava/util/Calendar;

.field private final mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field final synthetic this$0:Lcom/android/server/display/NightDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/NightDisplayService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/NightDisplayService;

    .prologue
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/NightDisplayService$AutoMode;-><init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/NightDisplayService$AutoMode;)V

    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-static {p1, v0}, Lcom/android/server/display/NightDisplayService;->-wrap1(Lcom/android/server/display/NightDisplayService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    return-void
.end method

.method private updateActivated(Lcom/android/server/twilight/TwilightState;)V
    .locals 5
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    :goto_0
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v4}, Lcom/android/server/display/NightDisplayService;->-get8(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v4}, Lcom/android/server/display/NightDisplayService;->-get8(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v4, v0, :cond_4

    .local v1, "setActivated":Z
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->sunrise()Ljava/util/Calendar;

    move-result-object v2

    .local v2, "sunrise":Ljava/util/Calendar;
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->sunset()Ljava/util/Calendar;

    move-result-object v3

    .local v3, "sunset":Ljava/util/Calendar;
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    .end local v1    # "setActivated":Z
    .end local v2    # "sunrise":Ljava/util/Calendar;
    .end local v3    # "sunset":Ljava/util/Calendar;
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v4}, Lcom/android/server/display/NightDisplayService;->-get4(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .local v0, "isNight":Z
    goto :goto_0

    .end local v0    # "isNight":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .restart local v1    # "setActivated":Z
    .restart local v2    # "sunrise":Ljava/util/Calendar;
    .restart local v3    # "sunset":Ljava/util/Calendar;
    :cond_5
    const/4 v1, 0x1

    .local v1, "setActivated":Z
    goto :goto_2

    .local v1, "setActivated":Z
    :cond_6
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    :cond_7
    const/4 v1, 0x1

    .local v1, "setActivated":Z
    goto :goto_2
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v0}, Lcom/android/server/display/NightDisplayService;->-get8(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get6(Lcom/android/server/display/NightDisplayService;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0, p0}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    return-void
.end method

.method public onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    const/4 v0, 0x0

    const-string v1, "NightDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTwilightStateChanged: isNight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method