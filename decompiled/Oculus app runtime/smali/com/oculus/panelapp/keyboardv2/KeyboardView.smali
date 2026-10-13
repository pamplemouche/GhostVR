.class public Lcom/oculus/panelapp/keyboardv2/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;
    }
.end annotation


# static fields
.field private static final DEBOUNCE_TIME:I = 0x46

.field private static final LONGPRESS_TIMEOUT:I

.field private static final MSG_LONGPRESS:I = 0x2

.field private static final MSG_REPEAT:I = 0x1

.field private static final NOT_A_KEY:I = -0x1

.field private static final REPEAT_INTERVAL:I = 0x32

.field private static final REPEAT_START_DELAY:I = 0x190


# instance fields
.field private ignoreKeyActions:Z

.field private mAbortKey:Z

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClipRegion:Landroid/graphics/Rect;

.field private mCurrentHoverKeyIndex:I

.field private mCurrentKey:I

.field private mCurrentKeyIndex:I

.field private mCurrentKeyTime:J

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDownTime:J

.field private mDrawPending:Z

.field mHandler:Landroid/os/Handler;

.field private mInvalidatedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyIndices:[I

.field private mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

.field private mKeyboardActionListener:Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mKeys:[Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

.field private mLastCodeX:I

.field private mLastCodeY:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastMoveTime:J

.field private mLastX:I

.field private mLastY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupLayout:I

.field private mRepeatKeyIndex:I

.field private mShadowColor:I

.field private mShadowRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->LONGPRESS_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 123
    sget v0, Lcom/oculus/panelapp/keyboardv2/R$attr;->keyboardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 103
    iput v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKeyIndex:I

    .line 104
    iput v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKey:I

    .line 105
    iput v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentHoverKeyIndex:I

    const/16 v2, 0xc

    .line 115
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyIndices:[I

    .line 116
    iput v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mRepeatKeyIndex:I

    .line 132
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/R$styleable;->KeyboardView:[I

    .line 133
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_4

    .line 136
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p4

    .line 137
    sget v0, Lcom/oculus/panelapp/keyboardv2/R$styleable;->KeyboardView_keyBackground:I

    if-ne p4, v0, :cond_0

    .line 138
    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 139
    :cond_0
    sget v0, Lcom/oculus/panelapp/keyboardv2/R$styleable;->KeyboardView_popupLayout:I

    if-ne p4, v0, :cond_1

    .line 140
    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    iput p4, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mPopupLayout:I

    goto :goto_1

    .line 141
    :cond_1
    sget v0, Lcom/oculus/panelapp/keyboardv2/R$styleable;->KeyboardView_shadowColor:I

    if-ne p4, v0, :cond_2

    .line 142
    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    iput p4, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mShadowColor:I

    goto :goto_1

    .line 143
    :cond_2
    sget v0, Lcom/oculus/panelapp/keyboardv2/R$styleable;->KeyboardView_shadowRadius:I

    if-ne p4, v0, :cond_3

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p1, p4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p4

    iput p4, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mShadowRadius:F

    :cond_3
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 147
    :cond_4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 148
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 149
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 150
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/16 p3, 0xff

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 152
    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/keyboardv2/KeyboardView;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->repeatKey()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/keyboardv2/KeyboardView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private detectAndSendKey(III)V
    .locals 2

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 439
    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeys:[Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    array-length p3, p2

    if-ge p1, p3, :cond_1

    .line 440
    aget-object p1, p2, p1

    .line 441
    iget-object p2, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->text:Ljava/lang/CharSequence;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    .line 442
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->LAYOUT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget v0, v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-eq p2, v0, :cond_0

    iget-object p2, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    .line 443
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->SHIFT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget v0, v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-eq p2, v0, :cond_0

    iget-object p2, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    .line 444
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->DISMISS:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget v0, v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-eq p2, v0, :cond_0

    iget-object p2, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    .line 445
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->ACTION_KEY:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget v0, v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-eq p2, v0, :cond_0

    iget-object p2, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    .line 446
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->RETURN_TO_CURRENT_LANGUAGE:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget v0, v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-ne p2, v0, :cond_1

    .line 447
    :cond_0
    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboardActionListener:Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;

    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getIme()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->isShifted()Z

    move-result v1

    invoke-interface {p2, v0, v1, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;->onRelease(Ljava/lang/String;ZLcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V

    .line 448
    iget-object p1, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->SHIFT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-eq p1, p2, :cond_1

    .line 449
    invoke-virtual {p0, p3}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->setShifted(Z)Z

    :cond_1
    return-void
.end method

.method private getKeyIndices(II[I)I
    .locals 4

    .line 421
    iget-object p3, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeys:[Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    .line 424
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getNearestKeys(II)[I

    move-result-object v0

    .line 425
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 427
    aget v3, v0, v2

    aget-object v3, p3, v3

    .line 428
    invoke-virtual {v3, p1, p2}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->isInside(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    aget p1, v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method private onBufferDraw()V
    .locals 18

    move-object/from16 v0, p0

    .line 301
    iget-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboardChanged:Z

    if-eqz v1, :cond_3

    .line 302
    :cond_0
    iget-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-boolean v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboardChanged:Z

    if-eqz v4, :cond_2

    .line 304
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getWidth()I

    move-result v4

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getHeight()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 306
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 308
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 309
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 311
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->invalidateAllKeys()V

    .line 312
    iput-boolean v3, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboardChanged:Z

    .line 314
    :cond_3
    iget-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    if-nez v1, :cond_4

    return-void

    .line 315
    :cond_4
    iget-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 316
    iget-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 317
    iget-object v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 318
    iget-object v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 319
    iget-object v5, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingLeft()I

    move-result v6

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingTop()I

    move-result v7

    .line 322
    iget-object v8, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeys:[Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    .line 323
    iget-object v9, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mInvalidatedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    if-eqz v9, :cond_5

    .line 325
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 327
    iget v10, v9, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    add-int/2addr v10, v6

    sub-int/2addr v10, v2

    iget v11, v5, Landroid/graphics/Rect;->left:I

    if-gt v10, v11, :cond_5

    iget v10, v9, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    add-int/2addr v10, v7

    sub-int/2addr v10, v2

    iget v11, v5, Landroid/graphics/Rect;->top:I

    if-gt v10, v11, :cond_5

    iget v10, v9, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    iget v11, v9, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    add-int/2addr v10, v11

    add-int/2addr v10, v6

    add-int/2addr v10, v2

    iget v11, v5, Landroid/graphics/Rect;->right:I

    if-lt v10, v11, :cond_5

    iget v10, v9, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    iget v11, v9, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    add-int/2addr v10, v11

    add-int/2addr v10, v7

    add-int/2addr v10, v2

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-lt v10, v5, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    .line 334
    :goto_0
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 335
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 336
    array-length v10, v8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_13

    .line 338
    aget-object v13, v8, v11

    .line 339
    iget-object v14, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyBackground:Landroid/graphics/drawable/Drawable;

    if-nez v14, :cond_6

    iget-object v14, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_6
    iget-object v14, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyBackground:Landroid/graphics/drawable/Drawable;

    .line 340
    :goto_2
    invoke-virtual {v14, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 341
    iget v15, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyTextColor:I

    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v2, :cond_7

    if-eq v9, v13, :cond_7

    move/from16 v16, v2

    move-object/from16 v17, v8

    goto/16 :goto_9

    .line 346
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getKeyboard()Lcom/oculus/panelapp/keyboardv2/Keyboard;

    move-result-object v15

    invoke-virtual {v15}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getKeyToHighlight()I

    move-result v15

    invoke-virtual {v13, v15}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->getCurrentDrawableState(I)[I

    move-result-object v15

    .line 347
    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 349
    iget-object v15, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    invoke-virtual {v15}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->isShifted()Z

    move-result v15

    if-eqz v15, :cond_8

    iget-object v15, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_8
    iget-object v15, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->label:Ljava/lang/CharSequence;

    :goto_3
    if-nez v15, :cond_9

    .line 350
    iget-object v15, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 351
    :cond_9
    iget-object v12, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    invoke-virtual {v12}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->isShifted()Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v12, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->shiftIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_a
    iget-object v12, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :goto_4
    if-nez v12, :cond_b

    .line 352
    iget-object v12, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :cond_b
    if-nez v15, :cond_c

    const/4 v15, 0x0

    goto :goto_5

    .line 353
    :cond_c
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 354
    :goto_5
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    move/from16 v16, v2

    .line 355
    iget v2, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    move-object/from16 v17, v8

    iget v8, v3, Landroid/graphics/Rect;->right:I

    if-ne v2, v8, :cond_d

    iget v2, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_e

    .line 356
    :cond_d
    iget v2, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    iget v3, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    const/4 v8, 0x0

    invoke-virtual {v14, v8, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 358
    :cond_e
    iget v2, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    add-int/2addr v2, v6

    int-to-float v2, v2

    iget v3, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    add-int/2addr v3, v7

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 359
    invoke-virtual {v14, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v15, :cond_11

    .line 361
    iget-object v2, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->font:Landroid/graphics/Typeface;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 363
    iget v2, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mShadowRadius:F

    iget v3, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mShadowColor:I

    const/4 v8, 0x0

    invoke-virtual {v4, v2, v8, v8, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 364
    iget-object v2, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->subLabel:Ljava/lang/CharSequence;

    if-nez v2, :cond_f

    const/4 v12, 0x0

    goto :goto_6

    :cond_f
    iget-object v2, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->subLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_6
    if-eqz v12, :cond_10

    .line 366
    iget v2, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget v3, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyTextSize:I

    sub-int/2addr v2, v3

    iget v3, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->subKeyTextSize:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    .line 371
    iget v3, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->subKeyTextSize:I

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 372
    iget v3, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v14

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v14

    sub-float/2addr v3, v14

    .line 373
    iget v14, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v8

    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v8

    div-int/lit8 v14, v14, 0x2

    iget v8, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v8

    int-to-float v8, v14

    invoke-virtual {v1, v12, v8, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 380
    iget v8, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyTextSize:I

    int-to-float v8, v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 381
    iget v8, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    iget v12, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v12

    iget v12, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v12

    div-int/lit8 v8, v8, 0x2

    iget v12, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v12

    int-to-float v8, v8

    iget v12, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->subKeyTextSize:I

    int-to-float v12, v12

    sub-float/2addr v3, v12

    sub-float/2addr v3, v2

    invoke-virtual {v1, v15, v8, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 387
    :cond_10
    iget v2, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyTextSize:I

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 389
    iget v2, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    iget v3, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v8

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v8

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 393
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v12

    sub-float/2addr v8, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v8, v12

    add-float/2addr v3, v8

    iget v8, v5, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float/2addr v3, v8

    .line 389
    invoke-virtual {v1, v15, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 398
    invoke-virtual {v4, v2, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_8

    :cond_11
    if-eqz v12, :cond_12

    .line 400
    iget v2, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    iget v3, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 401
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    .line 403
    iget v3, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v8

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v8

    .line 404
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    sub-int/2addr v3, v8

    div-int/lit8 v3, v3, 0x2

    iget v8, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v8

    int-to-float v8, v2

    int-to-float v14, v3

    .line 406
    invoke-virtual {v1, v8, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 408
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    const/4 v15, 0x0

    .line 407
    invoke-virtual {v12, v15, v15, v8, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 409
    invoke-virtual {v12, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v2, v2

    int-to-float v2, v2

    neg-int v3, v3

    int-to-float v3, v3

    .line 410
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 412
    :cond_12
    :goto_8
    iget v2, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    neg-int v2, v2

    sub-int/2addr v2, v6

    int-to-float v2, v2

    iget v3, v13, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    neg-int v3, v3

    sub-int/2addr v3, v7

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_9
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v16

    move-object/from16 v8, v17

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_13
    const/4 v2, 0x0

    .line 414
    iput-object v2, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mInvalidatedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    .line 415
    iget-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    const/4 v1, 0x0

    .line 416
    iput-boolean v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mDrawPending:Z

    .line 417
    iget-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 520
    iget p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mPopupLayout:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 523
    :cond_0
    iget p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKey:I

    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeys:[Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    array-length v2, v1

    if-lt p1, v2, :cond_1

    goto :goto_0

    .line 526
    :cond_1
    aget-object p1, v1, p1

    .line 527
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboardActionListener:Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->isShifted()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;->onLongPress(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;Z)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private removeMessages()V
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 718
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 719
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private repeatKey()Z
    .locals 4

    .line 704
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeys:[Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mRepeatKeyIndex:I

    aget-object v0, v0, v1

    .line 705
    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboardActionListener:Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;

    iget-object v2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    invoke-virtual {v2}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getIme()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    invoke-virtual {v3}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->isShifted()Z

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;->onPress(Ljava/lang/String;ZLcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V

    const/4 v0, 0x1

    return v0
.end method

.method private showKey(I)V
    .locals 4

    .line 456
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKeyIndex:I

    .line 457
    iput p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKeyIndex:I

    .line 459
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeys:[Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    .line 460
    iget v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v1, :cond_2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 461
    array-length v3, p1

    if-le v3, v0, :cond_1

    .line 462
    aget-object v3, p1, v0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 463
    :goto_0
    invoke-virtual {v3, v1}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->onReleased(Z)V

    .line 464
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->invalidateKey(I)V

    .line 466
    :cond_1
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v2, :cond_2

    array-length v1, p1

    if-le v1, v0, :cond_2

    .line 467
    aget-object p1, p1, v0

    .line 468
    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->onPressed()V

    .line 469
    iget p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->invalidateKey(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public closing()V
    .locals 1

    .line 711
    invoke-direct {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->removeMessages()V

    const/4 v0, 0x0

    .line 712
    iput-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 713
    iput-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public getColumnCount()I
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 237
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getRows()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;

    .line 238
    invoke-virtual {v2}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->getKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 239
    invoke-virtual {v2}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->getKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getKeyboard()Lcom/oculus/panelapp/keyboardv2/Keyboard;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboardActionListener:Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 231
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getRows()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getShifted()Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->isShifted()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateAllKeys()V
    .locals 4

    .line 482
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    const/4 v0, 0x1

    .line 483
    iput-boolean v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mDrawPending:Z

    .line 484
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->invalidate()V

    return-void
.end method

.method public invalidateKey(I)V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeys:[Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 496
    array-length v1, v0

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 499
    :cond_1
    aget-object p1, v0, p1

    .line 500
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->invalidateKey(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public invalidateKey(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V
    .locals 6

    .line 504
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mInvalidatedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    .line 505
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v1, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    .line 506
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    .line 507
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    iget v4, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    .line 508
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    iget v5, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    .line 509
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 505
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 510
    invoke-direct {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->onBufferDraw()V

    .line 511
    iget v0, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    .line 512
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    .line 513
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    iget v3, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    .line 514
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    iget p1, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    add-int/2addr v3, p1

    .line 515
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingTop()I

    move-result p1

    add-int/2addr v3, p1

    .line 511
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->invalidate(IIII)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 157
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 158
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView$1;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView$1;-><init>(Lcom/oculus/panelapp/keyboardv2/KeyboardView;)V

    iput-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 725
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 726
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->closing()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 293
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 294
    iget-boolean v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboardChanged:Z

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->onBufferDraw()V

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 535
    iget v2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentHoverKeyIndex:I

    const/4 v3, 0x0

    .line 536
    invoke-direct {p0, v0, v1, v3}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getKeyIndices(II[I)I

    move-result v0

    iput v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentHoverKeyIndex:I

    .line 539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, -0x1

    const/16 v3, 0x9

    if-ne v0, v3, :cond_0

    .line 540
    iget p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentHoverKeyIndex:I

    if-eq p1, v1, :cond_4

    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeys:[Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    array-length v1, v0

    if-le v1, p1, :cond_4

    .line 541
    aget-object p1, v0, p1

    .line 542
    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->onHoverEnter()V

    .line 543
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentHoverKeyIndex:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->invalidateKey(I)V

    .line 544
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboardActionListener:Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;->onHoverEnter(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V

    goto :goto_0

    .line 546
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    if-eq v2, v1, :cond_1

    .line 547
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeys:[Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    array-length v0, p1

    if-le v0, v2, :cond_1

    .line 548
    aget-object p1, p1, v2

    .line 549
    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->onHoverExit()V

    .line 550
    invoke-virtual {p0, v2}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->invalidateKey(I)V

    .line 551
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboardActionListener:Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;->onHoverExit()V

    .line 553
    :cond_1
    iput v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentHoverKeyIndex:I

    goto :goto_0

    .line 554
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    .line 555
    iget p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentHoverKeyIndex:I

    if-eq p1, v1, :cond_3

    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeys:[Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    array-length v3, v0

    if-le v3, p1, :cond_3

    .line 556
    aget-object p1, v0, p1

    .line 557
    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->onHoverEnter()V

    .line 558
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentHoverKeyIndex:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->invalidateKey(I)V

    .line 559
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentHoverKeyIndex:I

    if-eq v2, v0, :cond_3

    .line 560
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboardActionListener:Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;->onHoverEnter(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V

    .line 563
    :cond_3
    iget p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentHoverKeyIndex:I

    if-eq v2, p1, :cond_4

    if-eq v2, v1, :cond_4

    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeys:[Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    array-length v0, p1

    if-le v0, v2, :cond_4

    .line 566
    aget-object p1, p1, v2

    .line 567
    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->onHoverExit()V

    .line 568
    invoke-virtual {p0, v2}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->invalidateKey(I)V

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMeasure(II)V
    .locals 1

    .line 275
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    if-nez p1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getMinWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    .line 281
    invoke-virtual {p2}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 287
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p1, 0x0

    .line 288
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 577
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 578
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 579
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 580
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 581
    invoke-direct {v0, v2, v3, v7}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getKeyIndices(II[I)I

    move-result v8

    .line 584
    iget-boolean v9, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mAbortKey:Z

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz v9, :cond_0

    if-eqz v4, :cond_0

    if-eq v4, v10, :cond_0

    return v11

    .line 589
    :cond_0
    iget v9, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentHoverKeyIndex:I

    const/4 v12, 0x0

    const/4 v13, -0x1

    if-ne v9, v13, :cond_2

    if-nez v4, :cond_1

    .line 591
    iput-boolean v11, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->ignoreKeyActions:Z

    .line 592
    iput-boolean v12, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mAbortKey:Z

    :cond_1
    return v11

    :cond_2
    const-wide/16 v14, 0x0

    const/4 v9, 0x2

    if-eqz v4, :cond_e

    if-eq v4, v11, :cond_a

    if-eq v4, v9, :cond_4

    if-eq v4, v10, :cond_3

    goto/16 :goto_4

    .line 691
    :cond_3
    iput-boolean v12, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->ignoreKeyActions:Z

    .line 692
    invoke-direct/range {p0 .. p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->removeMessages()V

    .line 693
    iput-boolean v11, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mAbortKey:Z

    .line 694
    invoke-direct {v0, v13}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->showKey(I)V

    .line 695
    iget v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKey:I

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->invalidateKey(I)V

    goto/16 :goto_4

    .line 630
    :cond_4
    iget-boolean v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->ignoreKeyActions:Z

    if-eqz v4, :cond_5

    goto/16 :goto_4

    :cond_5
    if-eq v8, v13, :cond_8

    .line 634
    iget v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKey:I

    if-ne v4, v13, :cond_6

    .line 635
    iput v8, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKey:I

    .line 636
    iget-wide v14, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mDownTime:J

    sub-long v14, v5, v14

    iput-wide v14, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKeyTime:J

    goto :goto_0

    :cond_6
    if-ne v8, v4, :cond_7

    .line 639
    iget-wide v14, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKeyTime:J

    iget-wide v11, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastMoveTime:J

    sub-long v11, v5, v11

    add-long/2addr v14, v11

    iput-wide v14, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKeyTime:J

    move-wide/from16 v16, v5

    const/4 v10, 0x1

    goto :goto_2

    .line 641
    :cond_7
    iget v7, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mRepeatKeyIndex:I

    if-ne v7, v13, :cond_8

    .line 642
    iput v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastKey:I

    .line 643
    iget v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastX:I

    iput v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastCodeX:I

    .line 644
    iget v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastY:I

    iput v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastCodeY:I

    .line 645
    iget-wide v10, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v10, v5

    move-wide/from16 v16, v5

    iget-wide v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v10, v4

    iput-wide v10, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastKeyTime:J

    .line 646
    iput v8, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKey:I

    .line 647
    iput-wide v14, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKeyTime:J

    goto :goto_1

    :cond_8
    :goto_0
    move-wide/from16 v16, v5

    :goto_1
    const/4 v10, 0x0

    :goto_2
    if-nez v10, :cond_9

    .line 653
    iget-object v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    if-eq v8, v13, :cond_9

    .line 656
    iget-object v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 657
    iget-object v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v5, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v7, v5

    invoke-virtual {v4, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 660
    :cond_9
    iget v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKey:I

    invoke-direct {v0, v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->showKey(I)V

    move-wide/from16 v4, v16

    .line 661
    iput-wide v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastMoveTime:J

    goto/16 :goto_4

    :cond_a
    move-wide v4, v5

    .line 664
    iput-boolean v12, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->ignoreKeyActions:Z

    .line 665
    invoke-direct/range {p0 .. p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->removeMessages()V

    .line 666
    iget v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKey:I

    if-ne v8, v1, :cond_b

    .line 667
    iget-wide v9, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKeyTime:J

    iget-wide v11, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v4, v11

    add-long/2addr v9, v4

    iput-wide v9, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKeyTime:J

    goto :goto_3

    .line 669
    :cond_b
    iput v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastKey:I

    .line 670
    iget-wide v9, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v9, v4

    iget-wide v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v9, v4

    iput-wide v9, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastKeyTime:J

    .line 671
    iput v8, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKey:I

    .line 672
    iput-wide v14, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKeyTime:J

    .line 674
    :goto_3
    iget-wide v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKeyTime:J

    iget-wide v9, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastKeyTime:J

    cmp-long v1, v4, v9

    if-gez v1, :cond_c

    const-wide/16 v9, 0x46

    cmp-long v1, v4, v9

    if-gez v1, :cond_c

    iget v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastKey:I

    if-eq v1, v13, :cond_c

    .line 677
    iput v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKey:I

    .line 678
    iget v2, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastCodeX:I

    .line 679
    iget v3, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastCodeY:I

    .line 681
    :cond_c
    invoke-direct {v0, v13}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->showKey(I)V

    .line 682
    iget-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyIndices:[I

    invoke-static {v1, v13}, Ljava/util/Arrays;->fill([II)V

    .line 684
    iget v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mRepeatKeyIndex:I

    if-ne v1, v13, :cond_d

    iget-boolean v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mAbortKey:Z

    if-nez v1, :cond_d

    .line 685
    iget v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKey:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->detectAndSendKey(III)V

    .line 687
    :cond_d
    invoke-virtual {v0, v8}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->invalidateKey(I)V

    .line 688
    iput v13, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mRepeatKeyIndex:I

    goto :goto_4

    .line 599
    :cond_e
    iget-boolean v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->ignoreKeyActions:Z

    if-eqz v4, :cond_f

    goto :goto_4

    .line 600
    :cond_f
    iput-boolean v12, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mAbortKey:Z

    .line 601
    iput v2, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastCodeX:I

    .line 602
    iput v3, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastCodeY:I

    .line 603
    iput-wide v14, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastKeyTime:J

    .line 604
    iput-wide v14, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKeyTime:J

    .line 605
    iput v13, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastKey:I

    .line 606
    iput v8, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKey:I

    .line 607
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mDownTime:J

    .line 608
    iget-wide v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mDownTime:J

    iput-wide v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastMoveTime:J

    .line 609
    iget-object v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboardActionListener:Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;

    iget-object v5, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    .line 610
    invoke-virtual {v5}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getIme()Ljava/lang/String;

    move-result-object v5

    iget-object v10, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    .line 611
    invoke-virtual {v10}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->isShifted()Z

    move-result v10

    if-eq v8, v13, :cond_10

    iget-object v7, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeys:[Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    aget-object v7, v7, v8

    .line 609
    :cond_10
    invoke-interface {v4, v5, v10, v7}, Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;->onPress(Ljava/lang/String;ZLcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V

    .line 613
    iget v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKey:I

    if-ltz v4, :cond_11

    iget-object v5, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeys:[Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    aget-object v4, v5, v4

    iget-boolean v4, v4, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->repeatable:Z

    if-eqz v4, :cond_11

    .line 614
    iget v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKey:I

    iput v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mRepeatKeyIndex:I

    .line 615
    iget-object v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 616
    iget-object v5, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 618
    iget-boolean v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mAbortKey:Z

    if-eqz v4, :cond_11

    .line 619
    iput v13, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mRepeatKeyIndex:I

    goto :goto_4

    .line 623
    :cond_11
    iget v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mCurrentKey:I

    if-eq v4, v13, :cond_12

    .line 624
    iget-object v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 625
    iget-object v4, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v5, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v5, v5

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 627
    :cond_12
    invoke-direct {v0, v8}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->showKey(I)V

    .line 698
    :goto_4
    iput v2, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastX:I

    .line 699
    iput v3, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mLastY:I

    const/4 v1, 0x1

    return v1
.end method

.method public setKeyboard(Lcom/oculus/panelapp/keyboardv2/Keyboard;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 202
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->showKey(I)V

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->removeMessages()V

    .line 206
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    .line 207
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getKeys()Ljava/util/List;

    move-result-object p1

    .line 208
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeys:[Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    .line 209
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->requestLayout()V

    const/4 p1, 0x1

    .line 211
    iput-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboardChanged:Z

    .line 212
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->invalidateAllKeys()V

    .line 215
    iput-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mAbortKey:Z

    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboardActionListener:Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;

    return-void
.end method

.method public setShifted(Z)Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->setShifted(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 256
    iput-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->mKeyboardChanged:Z

    .line 257
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->invalidateAllKeys()V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
