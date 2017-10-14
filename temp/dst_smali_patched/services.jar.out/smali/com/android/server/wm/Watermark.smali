.class Lcom/android/server/wm/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


# instance fields
.field private final mDeltaX:I

.field private final mDeltaY:I

.field private final mDisplay:Landroid/view/Display;

.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mText:Ljava/lang/String;

.field private final mTextHeight:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextWidth:I

.field private final mTokens:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/Display;Landroid/util/DisplayMetrics;Landroid/view/SurfaceSession;[Ljava/lang/String;)V
    .locals 23
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "tokens"    # [Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3}, Landroid/view/Surface;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v9, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    .local v18, "len":I
    and-int/lit8 v18, v18, -0x2

    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .local v10, "c1":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    add-int/lit8 v4, v17, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .local v11, "c2":I
    const/16 v3, 0x61

    if-lt v10, v3, :cond_0

    const/16 v3, 0x66

    if-gt v10, v3, :cond_0

    add-int/lit8 v3, v10, -0x61

    add-int/lit8 v10, v3, 0xa

    :goto_1
    const/16 v3, 0x61

    if-lt v11, v3, :cond_2

    const/16 v3, 0x66

    if-gt v11, v3, :cond_2

    add-int/lit8 v3, v11, -0x61

    add-int/lit8 v11, v3, 0xa

    :goto_2
    mul-int/lit8 v3, v10, 0x10

    add-int/2addr v3, v11

    rsub-int v3, v3, 0xff

    int-to-char v3, v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v17, v17, 0x2

    goto :goto_0

    :cond_0
    const/16 v3, 0x41

    if-lt v10, v3, :cond_1

    const/16 v3, 0x46

    if-gt v10, v3, :cond_1

    add-int/lit8 v3, v10, -0x41

    add-int/lit8 v10, v3, 0xa

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v10, -0x30

    goto :goto_1

    :cond_2
    const/16 v3, 0x41

    if-lt v11, v3, :cond_3

    const/16 v3, 0x46

    if-gt v11, v3, :cond_3

    add-int/lit8 v3, v11, -0x41

    add-int/lit8 v11, v3, 0xa

    goto :goto_2

    :cond_3
    add-int/lit8 v11, v11, -0x30

    goto :goto_2

    .end local v10    # "c1":I
    .end local v11    # "c2":I
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x14

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v16

    .local v16, "fontSize":I
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v15

    .local v15, "fm":Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    iget v3, v15, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v4, v15, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v4, v5, v3, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    mul-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v4, v5, v3, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/high16 v5, -0x50000000

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v19

    .local v19, "shadowColor":I
    const/4 v3, 0x5

    const/4 v4, 0x0

    const v5, 0x60ffffff

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v12

    .local v12, "color":I
    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x7

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v22

    .local v22, "shadowRadius":I
    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v20

    .local v20, "shadowDx":I
    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v21

    .local v21, "shadowDy":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v22

    int-to-float v4, v0

    move/from16 v0, v20

    int-to-float v5, v0

    move/from16 v0, v21

    int-to-float v6, v0

    move/from16 v0, v19

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 v13, 0x0

    .local v13, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    new-instance v2, Landroid/view/SurfaceControl;

    const-string v4, "WatermarkSurface"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, -0x3

    const/4 v8, 0x4

    move-object/from16 v3, p3

    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "ctrl":Landroid/view/SurfaceControl;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    .end local v13    # "ctrl":Landroid/view/SurfaceControl;
    invoke-virtual {v3}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    const v3, 0xf4240

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void

    .end local v2    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v13    # "ctrl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v14

    .local v14, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object v2, v13

    .restart local v2    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_3

    .end local v13    # "ctrl":Landroid/view/SurfaceControl;
    .end local v14    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v14

    .restart local v14    # "e":Landroid/view/Surface$OutOfResourcesException;
    goto :goto_3
.end method


# virtual methods
.method drawIfNeeded()V
    .locals 21

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .local v10, "dw":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .local v7, "dh":I
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    new-instance v8, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1, v10, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v8, "dirty":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .local v4, "c":Landroid/graphics/Canvas;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .end local v4    # "c":Landroid/graphics/Canvas;
    :goto_0
    if-eqz v4, :cond_4

    sget-object v17, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .local v5, "deltaX":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .local v6, "deltaY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    move/from16 v17, v0

    add-int v17, v17, v10

    div-int v9, v17, v5

    .local v9, "div":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    move/from16 v17, v0

    add-int v17, v17, v10

    mul-int v18, v9, v5

    sub-int v14, v17, v18

    .local v14, "rem":I
    div-int/lit8 v13, v5, 0x4

    .local v13, "qdelta":I
    if-lt v14, v13, :cond_0

    sub-int v17, v5, v13

    move/from16 v0, v17

    if-le v14, v0, :cond_1

    :cond_0
    div-int/lit8 v17, v5, 0x3

    add-int v5, v5, v17

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v16, v0

    .local v16, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v15, v0

    .local v15, "x":I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    move/from16 v17, v0

    add-int v17, v17, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    move-object/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/2addr v15, v5

    if-lt v15, v10, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    move/from16 v17, v0

    add-int v17, v17, v10

    sub-int v15, v15, v17

    add-int v16, v16, v6

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .end local v5    # "deltaX":I
    .end local v6    # "deltaY":I
    .end local v7    # "dh":I
    .end local v8    # "dirty":Landroid/graphics/Rect;
    .end local v9    # "div":I
    .end local v10    # "dw":I
    .end local v13    # "qdelta":I
    .end local v14    # "rem":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_4
    return-void

    .restart local v4    # "c":Landroid/graphics/Canvas;
    .restart local v7    # "dh":I
    .restart local v8    # "dirty":Landroid/graphics/Rect;
    .restart local v10    # "dw":I
    :catch_0
    move-exception v12

    .local v12, "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_0

    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v11

    .local v11, "e":Landroid/view/Surface$OutOfResourcesException;
    goto/16 :goto_0
.end method

.method positionSurface(II)V
    .locals 1
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    .prologue
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    iput p2, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    :cond_1
    return-void
.end method