.class public final Landroid/view/WindowManagerImpl;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/WindowManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultToken:Landroid/os/IBinder;

.field private final mGlobal:Landroid/view/WindowManagerGlobal;

.field private final mParentWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentWindow"    # Landroid/view/Window;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    iput-object p1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    return-void
.end method

.method private applyDefaultToken(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Params must be WindowManager.LayoutParams"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .local v0, "wparams":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .end local v0    # "wparams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/16 v0, 0x17f

    invoke-static {v0, p2}, Landroid/util/SeempLog;->record_vg_layout(ILandroid/view/ViewGroup$LayoutParams;)I

    invoke-direct {p0, p2}, Landroid/view/WindowManagerImpl;->applyDefaultToken(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V

    return-void
.end method

.method public createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;
    .locals 2
    .param p1, "parentWindow"    # Landroid/view/Window;

    .prologue
    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    return-object v0
.end method

.method public createPresentationWindowManager(Landroid/content/Context;)Landroid/view/WindowManagerImpl;
    .locals 2
    .param p1, "displayContext"    # Landroid/content/Context;

    .prologue
    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    invoke-direct {v0, p1, v1}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    return-object v0
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    return-void
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    return-void
.end method

.method public requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
    .locals 3
    .param p1, "receiver"    # Landroid/view/WindowManager$KeyboardShortcutsReceiver;
    .param p2, "deviceId"    # I

    .prologue
    new-instance v1, Landroid/view/WindowManagerImpl$1;

    invoke-direct {v1, p0, p1}, Landroid/view/WindowManagerImpl$1;-><init>(Landroid/view/WindowManagerImpl;Landroid/view/WindowManager$KeyboardShortcutsReceiver;)V

    .local v1, "resultReceiver":Lcom/android/internal/os/IResultReceiver;
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Landroid/view/IWindowManager;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDefaultToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    iput-object p1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/16 v0, 0x180

    invoke-static {v0, p2}, Landroid/util/SeempLog;->record_vg_layout(ILandroid/view/ViewGroup$LayoutParams;)I

    invoke-direct {p0, p2}, Landroid/view/WindowManagerImpl;->applyDefaultToken(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerGlobal;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
