.class public Lcom/android/server/wm/DimLayer;
.super Ljava/lang/Object;
.source "DimLayer.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DimLayer"


# instance fields
.field mAlpha:F

.field mBounds:Landroid/graphics/Rect;

.field mDimSurface:Landroid/view/SurfaceControl;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mDuration:J

.field mEffectType:I

.field mLastBounds:Landroid/graphics/Rect;

.field mLayer:I

.field mService:Lcom/android/server/wm/WindowManagerService;

.field private mShowing:Z

.field final mStack:Lcom/android/server/wm/TaskStack;

.field mStartAlpha:F

.field mStartTime:J

.field mStringNameCache:Ljava/lang/String;

.field mTargetAlpha:F

.field mType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    iput v1, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    iput v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/server/wm/DimLayer;->mEffectType:I

    iput-object p1, p0, Lcom/android/server/wm/DimLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p4, p0, Lcom/android/server/wm/DimLayer;->mType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wm/DimLayer;->mStack:Lcom/android/server/wm/TaskStack;

    iput-object p3, p0, Lcom/android/server/wm/DimLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    .local v7, "displayId":I
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DimSurface("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    iget v6, p0, Lcom/android/server/wm/DimLayer;->mEffectType:I

    or-int/lit8 v6, v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl;->setLayerStack(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DimLayer("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    iget v6, p0, Lcom/android/server/wm/DimLayer;->mEffectType:I

    or-int/lit8 v6, v6, 0x4

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private adjustBounds()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    const/4 v3, 0x0

    .local v3, "spec":Landroid/view/MagnificationSpec;
    iget-object v6, p0, Lcom/android/server/wm/DimLayer;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v3, :cond_1

    iget v6, v3, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    .local v1, "dw":I
    iget-object v6, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    .local v0, "dh":I
    iget-object v6, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v4, v6

    .local v4, "xPos":F
    iget-object v6, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v5, v6

    .local v5, "yPos":F
    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v6, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v1, v0}, Landroid/view/SurfaceControl;->setSize(II)V

    iget-object v6, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .end local v0    # "dh":I
    .end local v1    # "dw":I
    .end local v4    # "xPos":F
    .end local v5    # "yPos":F
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/DimLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .local v2, "info":Landroid/view/DisplayInfo;
    iget v6, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .restart local v1    # "dw":I
    iget v6, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-double v6, v6

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .restart local v0    # "dh":I
    mul-int/lit8 v6, v1, -0x1

    div-int/lit8 v6, v6, 0x6

    int-to-float v4, v6

    .restart local v4    # "xPos":F
    mul-int/lit8 v6, v0, -0x1

    div-int/lit8 v6, v6, 0x6

    int-to-float v5, v6

    .restart local v5    # "yPos":F
    goto :goto_0
.end method

.method private durationEndsEarlier(J)Z
    .locals 7
    .param p1, "duration"    # J

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    iget-wide v4, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    const/4 v2, 0x0

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    cmpl-float v1, p1, v2

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    :cond_1
    return-void

    :cond_2
    cmpl-float v1, p1, v2

    if-lez v1, :cond_0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "DimLayer"

    const-string v2, "Failure setting alpha immediately"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method destroySurface()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    return-void
.end method

.method getLayer()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    return v0
.end method

.method getTargetAlpha()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    return v0
.end method

.method hide()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DimLayer;->hide(J)V

    :cond_0
    return-void
.end method

.method hide(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DimLayer;->durationEndsEarlier(J)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mEffectType:I

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_1

    const-wide/16 p1, 0x0

    :cond_1
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    :cond_2
    return-void
.end method

.method isAnimating()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDimming()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDimSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Last animation: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mDuration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " mStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " curTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mStartAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mTargetAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    return-void
.end method

.method setBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    invoke-direct {p0}, Lcom/android/server/wm/DimLayer;->adjustBounds()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v1, "DimLayer"

    const-string v2, "Failure setting size"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1
.end method

.method public setEffectType(I)V
    .locals 7
    .param p1, "effectType"    # I

    .prologue
    const/4 v5, -0x1

    const/16 v3, 0x10

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mEffectType:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/wm/DimLayer;->mEffectType:I

    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_1

    const-string v2, "DimSurface"

    .local v2, "surfaceName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->hide()V

    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    or-int/lit8 v6, p1, 0x4

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DimLayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEffectType("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "surfaceName":Ljava/lang/String;
    :cond_0
    return-void

    :cond_1
    const-string v2, "BlurSurface"

    goto :goto_0

    .restart local v2    # "surfaceName":Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    or-int/lit8 v6, p1, 0x4

    move v4, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    goto :goto_1
.end method

.method setLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    .prologue
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    :cond_0
    return-void
.end method

.method show()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    :cond_0
    return-void
.end method

.method show(IFJ)V
    .locals 7
    .param p1, "layer"    # I
    .param p2, "alpha"    # F
    .param p3, "duration"    # J

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    const-string v1, "DimLayer"

    const-string v4, "show: no Surface"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/DimLayer;->adjustBounds()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, "curTime":J
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v0

    .local v0, "animating":Z
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_3

    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DimLayer;->durationEndsEarlier(J)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    if-nez v0, :cond_4

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_4

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-gtz v1, :cond_5

    invoke-direct {p0, p2}, Lcom/android/server/wm/DimLayer;->setAlpha(F)V

    :cond_4
    :goto_1
    iput p2, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v1, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    iput-wide v2, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    iput-wide p3, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    goto :goto_1
.end method

.method stepAnimation()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-nez v4, :cond_0

    const-string v4, "DimLayer"

    const-string v5, "stepAnimation: null Surface"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v8, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, "curTime":J
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    iget v5, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    sub-float v1, v4, v5

    .local v1, "alphaDelta":F
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    iget-wide v6, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    sub-long v6, v2, v6

    long-to-float v5, v6

    mul-float/2addr v5, v1

    iget-wide v6, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    add-float v0, v4, v5

    .local v0, "alpha":F
    cmpl-float v4, v1, v8

    if-lez v4, :cond_1

    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_2

    :cond_1
    cmpg-float v4, v1, v8

    if-gez v4, :cond_3

    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->setAlpha(F)V

    .end local v0    # "alpha":F
    .end local v1    # "alphaDelta":F
    .end local v2    # "curTime":J
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mStringNameCache:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / stack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mStringNameCache:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mStringNameCache:Ljava/lang/String;

    return-object v0
.end method