.class Landroid/widget/ActionMenuPresenter$SemOverflowImage;
.super Landroid/widget/ImageView;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemOverflowImage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 1164
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 1165
    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1167
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setClickable(Z)V

    .line 1168
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setFocusable(Z)V

    .line 1169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setVisibility(I)V

    .line 1170
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setEnabled(Z)V

    .line 1173
    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getHoverUIFeatureLevel()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 1174
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setHoverPopupType(I)V

    .line 1175
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setLongClickable(Z)V

    .line 1178
    :cond_1
    return-void
.end method


# virtual methods
.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1210
    invoke-super {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    .line 1212
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1182
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1185
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    const v4, 0x10102f6

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1187
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x25

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setMinimumHeight(I)V

    .line 1190
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1192
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1194
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1216
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1217
    const-string v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1218
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 1219
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1198
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    :goto_0
    return v1

    .line 1202
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->playSoundEffect(I)V

    .line 1203
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 23

    .prologue
    .line 1227
    invoke-super/range {p0 .. p0}, Landroid/widget/ImageView;->performLongClick()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1228
    const/16 v21, 0x1

    .line 1306
    :goto_0
    return v21

    .line 1231
    :cond_0
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v14, v0, [I

    .line 1232
    .local v14, "screenPos":[I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1233
    .local v4, "contentFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getLocationOnScreen([I)V

    .line 1234
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 1236
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1237
    .local v5, "context":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050017

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 1238
    .local v16, "statusBarHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getWidth()I

    move-result v18

    .line 1239
    .local v18, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getHeight()I

    move-result v9

    .line 1240
    .local v9, "height":I
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v15, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1241
    .local v15, "screenWidth":I
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v13, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1242
    .local v13, "screenHeight":I
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1243
    .local v6, "density":F
    const/16 v21, 0x0

    aget v21, v14, v21

    div-int/lit8 v22, v18, 0x2

    add-int v12, v21, v22

    .line 1244
    .local v12, "referenceX":I
    const/4 v8, 0x0

    .line 1246
    .local v8, "hasCocktailBarOnTop":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    move-object/from16 v21, v0

    # getter for: Landroid/widget/ActionMenuPresenter;->mHasCocktailBar:Z
    invoke-static/range {v21 .. v21}, Landroid/widget/ActionMenuPresenter;->access$1300(Landroid/widget/ActionMenuPresenter;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1247
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string/jumbo v22, "window"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1248
    .local v2, "WM":Landroid/view/WindowManager;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/Display;->getRotation()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1249
    const/4 v8, 0x1

    .line 1253
    .end local v2    # "WM":Landroid/view/WindowManager;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getLayoutDirection()I

    move-result v21

    if-nez v21, :cond_2

    .line 1254
    sub-int v12, v15, v12

    .line 1256
    :cond_2
    const/high16 v21, 0x40a00000    # 5.0f

    mul-float v21, v21, v6

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v12, v12, v21

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    move-object/from16 v21, v0

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static/range {v21 .. v21}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1260
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v5, v0, v1}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1265
    .local v3, "cheatSheet":Landroid/widget/Toast;
    :goto_1
    const/4 v11, 0x0

    .line 1266
    .local v11, "offsetY":I
    const/16 v21, 0x1

    aget v21, v14, v21

    add-int v21, v21, v9

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    if-ne v9, v0, :cond_7

    .line 1267
    :cond_3
    if-eqz v8, :cond_6

    .line 1268
    const/16 v21, 0x1

    aget v11, v14, v21

    .line 1273
    :goto_2
    const v21, 0x800035

    add-int v22, v9, v11

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v12, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 1280
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v10

    .line 1281
    .local v10, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1282
    const/high16 v21, 0x40800000    # 4.0f

    mul-float v21, v21, v6

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1283
    .local v17, "tempToastHeight":I
    const/4 v7, 0x0

    .line 1284
    .local v7, "gravity":I
    const/16 v19, 0x0

    .line 1285
    .local v19, "xOffset":I
    const/16 v20, 0x0

    .line 1287
    .local v20, "yOffset":I
    const/16 v21, 0x1

    aget v21, v14, v21

    add-int v21, v21, v9

    add-int v21, v21, v17

    move/from16 v0, v21

    if-ge v0, v13, :cond_8

    .line 1289
    const/16 v7, 0x35

    .line 1290
    const/16 v21, 0x0

    aget v21, v14, v21

    sub-int v21, v15, v21

    div-int/lit8 v22, v18, 0x2

    sub-int v19, v21, v22

    .line 1291
    const/16 v21, 0x1

    aget v21, v14, v21

    add-int v20, v21, v9

    .line 1301
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v7, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 1304
    .end local v7    # "gravity":I
    .end local v17    # "tempToastHeight":I
    .end local v19    # "xOffset":I
    .end local v20    # "yOffset":I
    :cond_4
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1305
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->performHapticFeedback(I)Z

    .line 1306
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 1262
    .end local v3    # "cheatSheet":Landroid/widget/Toast;
    .end local v10    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v11    # "offsetY":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v5, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .restart local v3    # "cheatSheet":Landroid/widget/Toast;
    goto/16 :goto_1

    .line 1271
    .restart local v11    # "offsetY":I
    :cond_6
    const/16 v21, 0x1

    aget v21, v14, v21

    sub-int v11, v21, v16

    goto :goto_2

    .line 1275
    :cond_7
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v11, v13, v21

    .line 1276
    const v21, 0x800055

    add-int v22, v9, v11

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v12, v1}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_3

    .line 1295
    .restart local v7    # "gravity":I
    .restart local v10    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v17    # "tempToastHeight":I
    .restart local v19    # "xOffset":I
    .restart local v20    # "yOffset":I
    :cond_8
    const/16 v7, 0x55

    .line 1296
    const/16 v21, 0x0

    aget v21, v14, v21

    sub-int v21, v15, v21

    div-int/lit8 v22, v18, 0x2

    sub-int v19, v21, v22

    .line 1297
    move/from16 v20, v9

    goto :goto_4
.end method

.method protected setFrame(IIII)Z
    .locals 9
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 1311
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v1

    .line 1314
    .local v1, "changed":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1315
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1316
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1317
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getWidth()I

    move-result v6

    .line 1318
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getHeight()I

    move-result v4

    .line 1319
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    .line 1320
    .local v5, "offsetX":I
    div-int/lit8 v3, v5, 0x2

    .line 1322
    .local v3, "halfOffsetX":I
    const/4 v7, 0x0

    add-int v8, v3, v6

    invoke-virtual {v0, v3, v7, v8, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1325
    .end local v3    # "halfOffsetX":I
    .end local v4    # "height":I
    .end local v5    # "offsetX":I
    .end local v6    # "width":I
    :cond_0
    return v1
.end method
