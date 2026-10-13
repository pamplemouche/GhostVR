.class public Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/keyboardv2/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final KEY_STATE_HOVERED:[I

.field private static final KEY_STATE_NORMAL:[I

.field private static final KEY_STATE_NORMAL_OFF:[I

.field private static final KEY_STATE_NORMAL_ON:[I

.field private static final KEY_STATE_PRESSED:[I

.field private static final KEY_STATE_PRESSED_OFF:[I

.field private static final KEY_STATE_PRESSED_ON:[I


# instance fields
.field public codes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public codesModifier:Ljava/lang/CharSequence;

.field public edgeFlags:I

.field public font:Landroid/graphics/Typeface;

.field public gap:I

.field public height:I

.field public hoverdOver:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconPreview:Landroid/graphics/drawable/Drawable;

.field public iconRef:I

.field public isCommand:Z

.field public isExitKey:Z

.field public isShiftPopupKeyboardDifferent:Z

.field public keyBackground:Landroid/graphics/drawable/Drawable;

.field public keyTextColor:I

.field public keyTextSize:I

.field private keyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

.field public keyboardId:I

.field public keyboardLocale:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

.field public keyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

.field public label:Ljava/lang/CharSequence;

.field public modifier:Z

.field public on:Z

.field public popupCharacters:Ljava/lang/CharSequence;

.field public popupResId:I

.field public pressed:Z

.field public repeatable:Z

.field public shiftIcon:Landroid/graphics/drawable/Drawable;

.field public shiftLabel:Ljava/lang/CharSequence;

.field public shiftPopupResId:I

.field public shiftText:Ljava/lang/CharSequence;

.field public sticky:Z

.field public subKeyTextSize:I

.field public subLabel:Ljava/lang/CharSequence;

.field public supportsCapsLock:Z

.field public text:Ljava/lang/CharSequence;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    .line 328
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    const/4 v1, 0x3

    .line 332
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    const/4 v1, 0x1

    .line 336
    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x101009f

    aput v4, v2, v3

    sput-object v2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    .line 338
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    .line 342
    new-array v0, v3, [I

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .line 344
    new-array v0, v1, [I

    const v2, 0x10100a7

    aput v2, v0, v3

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->KEY_STATE_PRESSED:[I

    .line 346
    new-array v0, v1, [I

    const v1, 0x1010367

    aput v1, v0, v3

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->KEY_STATE_HOVERED:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101009f
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x10100a7
        0x101009f
        0x10100a0
    .end array-data

    :array_2
    .array-data 4
        0x10100a7
        0x101009f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;IILandroid/content/res/XmlResourceParser;Lcom/oculus/panelapp/keyboardv2/ActionType;Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;)V
    .locals 3

    .line 377
    invoke-direct {p0, p2}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;-><init>(Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;)V

    .line 379
    iput p3, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    .line 380
    iput p4, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    .line 382
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 383
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p4

    sget-object v0, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 385
    sget v0, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_keyWidth:I

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    .line 387
    invoke-static {v1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->access$000(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I

    move-result v1

    iget v2, p2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->defaultWidth:I

    .line 386
    invoke-static {p4, v0, v1, v2}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v0

    iput v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    .line 388
    sget v0, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_keyHeight:I

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    .line 390
    invoke-static {v1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->access$200(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I

    move-result v1

    iget v2, p2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->defaultHeight:I

    .line 389
    invoke-static {p4, v0, v1, v2}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v0

    iput v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    .line 391
    sget v0, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_horizontalGap:I

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    .line 395
    invoke-static {v1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->access$000(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I

    move-result v1

    iget v2, p2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->defaultHorizontalGap:I

    .line 392
    invoke-static {p4, v0, v1, v2}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v0

    iput v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->gap:I

    .line 397
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 398
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p4

    sget-object p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key:[I

    invoke-virtual {p3, p4, p5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 399
    iget p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->gap:I

    add-int/2addr p5, v0

    iput p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    .line 400
    new-instance p5, Landroid/util/TypedValue;

    invoke-direct {p5}, Landroid/util/TypedValue;-><init>()V

    .line 401
    sget v0, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_codes:I

    invoke-virtual {p4, v0, p5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 402
    iget v0, p5, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    iget v0, p5, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iget v0, p5, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 407
    iget-object p5, p5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->parseCSV(Ljava/lang/String;)Ljava/util/List;

    move-result-object p5

    iput-object p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    goto :goto_1

    .line 404
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    .line 405
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    iget p5, p5, Landroid/util/TypedValue;->data:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_2
    :goto_1
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_iconPreview:I

    invoke-virtual {p4, p5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    iput-object p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 411
    iget-object p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p5, :cond_3

    .line 413
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 412
    invoke-virtual {p5, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 416
    :cond_3
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_textColor:I

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    invoke-static {v1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->access$700(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I

    move-result v1

    invoke-virtual {p4, p5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p5

    iput p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyTextColor:I

    .line 417
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_textSize:I

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    .line 418
    invoke-static {v1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->access$800(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I

    move-result v1

    invoke-virtual {p4, p5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p5

    iput p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyTextSize:I

    .line 419
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_subTextSize:I

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    .line 420
    invoke-static {v1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->access$900(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I

    move-result v1

    invoke-virtual {p4, p5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p5

    iput p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->subKeyTextSize:I

    .line 422
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_popupCharacters:I

    invoke-virtual {p4, p5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p5

    iput-object p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 423
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_popupKeyboard:I

    invoke-virtual {p4, p5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p5

    iput p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->popupResId:I

    .line 424
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_isShiftPopupKeyboardDifferent:I

    .line 425
    invoke-virtual {p4, p5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p5

    iput-boolean p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->isShiftPopupKeyboardDifferent:Z

    .line 426
    iget-boolean p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->isShiftPopupKeyboardDifferent:Z

    if-eqz p5, :cond_4

    .line 427
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_shiftPopupKeyboard:I

    invoke-virtual {p4, p5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p5

    iput p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->shiftPopupResId:I

    goto :goto_2

    .line 429
    :cond_4
    iget p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->popupResId:I

    iput p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->shiftPopupResId:I

    .line 432
    :goto_2
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_keyboard:I

    invoke-virtual {p4, p5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p5

    iput p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboardId:I

    .line 433
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_isRepeatable:I

    invoke-virtual {p4, p5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p5

    iput-boolean p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->repeatable:Z

    .line 434
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_isModifier:I

    invoke-virtual {p4, p5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p5

    iput-boolean p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->modifier:Z

    .line 435
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_isSticky:I

    invoke-virtual {p4, p5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p5

    iput-boolean p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->sticky:Z

    .line 436
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_isExitKey:I

    invoke-virtual {p4, p5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p5

    iput-boolean p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->isExitKey:Z

    .line 437
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_keyEdgeFlags:I

    invoke-virtual {p4, p5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p5

    iput p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->edgeFlags:I

    .line 438
    iget p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->edgeFlags:I

    iget v1, p2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->rowEdgeFlags:I

    or-int/2addr p5, v1

    iput p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->edgeFlags:I

    .line 440
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_keyIcon:I

    invoke-virtual {p4, p5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p5

    iput p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->iconRef:I

    .line 441
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_keyIcon:I

    invoke-virtual {p4, p5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    iput-object p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 442
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_shiftKeyIcon:I

    invoke-virtual {p4, p5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    iput-object p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->shiftIcon:Landroid/graphics/drawable/Drawable;

    .line 443
    iget-object p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p5, :cond_5

    .line 444
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p5, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 446
    :cond_5
    iget-object p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->shiftIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p5, :cond_6

    .line 447
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->shiftIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p5, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 450
    :cond_6
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_keyboardSize:I

    invoke-virtual {p4, p5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_7

    .line 451
    invoke-virtual {p5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/oculus/panelapp/keyboardv2/KeyboardSize;->valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    move-result-object p5

    goto :goto_3

    :cond_7
    sget-object p5, Lcom/oculus/panelapp/keyboardv2/KeyboardSize;->UNKNOWN:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    :goto_3
    iput-object p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    .line 452
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_keyboardLocale:I

    invoke-virtual {p4, p5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_8

    .line 454
    invoke-virtual {p5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    move-result-object p5

    goto :goto_4

    :cond_8
    sget-object p5, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->UNKNOWN:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    :goto_4
    iput-object p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboardLocale:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    .line 455
    sget p5, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_font:I

    invoke-virtual {p4, p5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p5

    if-nez p5, :cond_9

    .line 456
    iget-object p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    invoke-static {p5}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->access$1000(Lcom/oculus/panelapp/keyboardv2/Keyboard;)Ljava/lang/String;

    move-result-object p5

    goto :goto_5

    :cond_9
    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    .line 457
    :goto_5
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->font:Landroid/graphics/Typeface;

    .line 458
    sget v1, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_keyLabel:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 459
    sget v1, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_keySubLabel:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->subLabel:Ljava/lang/CharSequence;

    .line 460
    sget v1, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_keyOutputText:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 463
    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getLayoutResId()I

    move-result v1

    sget v2, Lcom/oculus/panelapp/keyboardv2/R$xml;->en_us_text_default_transcription_48:I

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    .line 464
    invoke-static {v1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->access$1100(Lcom/oculus/panelapp/keyboardv2/Keyboard;)Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->isRemoteInputEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_a

    .line 466
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 467
    iget v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    iget v2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->gap:I

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->defaultWidth:I

    add-int/2addr v2, p2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    .line 470
    :cond_a
    sget p2, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_shiftKeyLabel:I

    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    .line 471
    sget p2, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_shiftKeyOutputText:I

    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->shiftText:Ljava/lang/CharSequence;

    .line 472
    sget p2, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_codesModifier:I

    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codesModifier:Ljava/lang/CharSequence;

    .line 473
    sget p2, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_supportsCapsLock:I

    invoke-virtual {p4, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->supportsCapsLock:Z

    .line 474
    sget p2, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_isCommand:I

    invoke-virtual {p4, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->isCommand:Z

    .line 475
    sget p2, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Key_background:I

    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyBackground:Landroid/graphics/drawable/Drawable;

    .line 476
    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    if-nez p2, :cond_b

    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 477
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    .line 478
    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_b
    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    invoke-virtual {p2}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getLayoutResId()I

    move-result p2

    sget v1, Lcom/oculus/panelapp/keyboardv2/R$xml;->en_us_text_default_transcription_48:I

    if-ne p2, v1, :cond_c

    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    .line 483
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/KeyCode;->PHONE_INPUT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget v1, v1, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-ne p2, v1, :cond_c

    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    .line 484
    invoke-static {p2}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->access$1100(Lcom/oculus/panelapp/keyboardv2/Keyboard;)Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->isRemoteInputEnabled()Z

    move-result p2

    if-nez p2, :cond_c

    const/4 p2, -0x1

    .line 485
    iput p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    .line 486
    iput v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->gap:I

    .line 489
    :cond_c
    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/KeyCode;->ACTION_KEY:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget v1, v1, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-ne p2, v1, :cond_d

    const/4 p2, 0x0

    .line 490
    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 491
    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->subLabel:Ljava/lang/CharSequence;

    .line 492
    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    .line 493
    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 494
    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->shiftIcon:Landroid/graphics/drawable/Drawable;

    .line 495
    sget-object p2, Lcom/oculus/panelapp/keyboardv2/Keyboard$1;->$SwitchMap$com$oculus$panelapp$keyboardv2$ActionType:[I

    invoke-virtual {p6}, Lcom/oculus/panelapp/keyboardv2/ActionType;->ordinal()I

    move-result p6

    aget p2, p2, p6

    packed-switch p2, :pswitch_data_0

    goto :goto_6

    .line 515
    :pswitch_0
    sget p1, Lcom/oculus/panelapp/keyboardv2/R$drawable;->done:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 512
    :pswitch_1
    sget p1, Lcom/oculus/panelapp/keyboardv2/R$drawable;->send:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 509
    :pswitch_2
    sget p1, Lcom/oculus/panelapp/keyboardv2/R$drawable;->next:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 506
    :pswitch_3
    sget p1, Lcom/oculus/panelapp/keyboardv2/R$drawable;->search:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 503
    :pswitch_4
    sget p1, Lcom/oculus/panelapp/keyboardv2/R$drawable;->newline:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 497
    :pswitch_5
    invoke-direct {p0, p7}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->getLocalizedActionLabel(Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 498
    iget p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyTextSize:I

    invoke-direct {p0, p7, p8, p2}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->getActionLabelTextSize(Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;I)I

    move-result p2

    iput p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyTextSize:I

    .line 499
    invoke-direct {p0, p7, p5}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->getActionLabelFontPath(Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 500
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->font:Landroid/graphics/Typeface;

    .line 520
    :cond_d
    :goto_6
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    .line 521
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->SHIFT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-eq p1, p2, :cond_e

    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    .line 522
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->ACTION_KEY:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-eq p1, p2, :cond_e

    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    .line 523
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->LAYOUT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-eq p1, p2, :cond_e

    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    .line 524
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->DISMISS:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-eq p1, p2, :cond_e

    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    .line 525
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->BACKSPACE:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-eq p1, p2, :cond_e

    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    .line 526
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->PHONE_INPUT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-eq p1, p2, :cond_e

    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    .line 527
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->TRANSCRIBE:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-ne p1, p2, :cond_f

    .line 528
    :cond_e
    sget p1, Lcom/oculus/panelapp/keyboardv2/R$drawable;->keyboard_key_background_highlighted:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyBackground:Landroid/graphics/drawable/Drawable;

    .line 530
    :cond_f
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;)V
    .locals 1

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    invoke-static {p1}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->access$600(Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;)Lcom/oculus/panelapp/keyboardv2/Keyboard;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    .line 351
    iget v0, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->defaultHeight:I

    iput v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    .line 352
    iget v0, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->defaultWidth:I

    iput v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    .line 353
    iget v0, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->defaultHorizontalGap:I

    iput v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->gap:I

    .line 354
    iget p1, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->rowEdgeFlags:I

    iput p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->edgeFlags:I

    return-void
.end method

.method private getActionLabelFontPath(Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 557
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->KO_KR:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    if-ne p1, v0, :cond_0

    const-string p1, "Fonts/MSNeoGothic.ttf"

    return-object p1

    :cond_0
    return-object p2
.end method

.method private getActionLabelTextSize(Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;I)I
    .locals 1

    .line 545
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->KO_KR:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    if-ne p1, v0, :cond_1

    .line 546
    sget-object p1, Lcom/oculus/panelapp/keyboardv2/KeyboardSize;->SMALL:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    if-ne p2, p1, :cond_0

    const/16 p1, 0x10

    return p1

    :cond_0
    const/16 p1, 0x16

    return p1

    :cond_1
    return p3
.end method

.method private getLocalizedActionLabel(Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;)Ljava/lang/String;
    .locals 1

    .line 534
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$1;->$SwitchMap$com$oculus$panelapp$keyboardv2$KeyboardLocale:[I

    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, "go"

    return-object p1

    :cond_0
    const-string p1, "ir"

    return-object p1

    :cond_1
    const-string p1, "\uc774\ub3d9"

    return-object p1
.end method


# virtual methods
.method public getCurrentDrawableState(I)[I
    .locals 2

    .line 676
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .line 681
    iget v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboardId:I

    if-ne v1, p1, :cond_0

    iget p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->iconRef:I

    sget v1, Lcom/oculus/panelapp/keyboardv2/R$drawable;->back_32_32:I

    if-eq p1, v1, :cond_0

    iget p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->iconRef:I

    sget v1, Lcom/oculus/panelapp/keyboardv2/R$drawable;->back_48_48:I

    if-eq p1, v1, :cond_0

    iget p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->iconRef:I

    sget v1, Lcom/oculus/panelapp/keyboardv2/R$drawable;->forward_32_32:I

    if-eq p1, v1, :cond_0

    iget p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->iconRef:I

    sget v1, Lcom/oculus/panelapp/keyboardv2/R$drawable;->forward_48_48:I

    if-eq p1, v1, :cond_0

    .line 686
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->KEY_STATE_PRESSED:[I

    .line 689
    :cond_0
    iget-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->on:Z

    if-eqz p1, :cond_3

    .line 690
    iget-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->pressed:Z

    if-eqz p1, :cond_1

    .line 691
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    goto :goto_0

    .line 692
    :cond_1
    iget-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->hoverdOver:Z

    if-eqz p1, :cond_2

    .line 693
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->KEY_STATE_HOVERED:[I

    goto :goto_0

    .line 695
    :cond_2
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_0

    .line 698
    :cond_3
    iget-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->sticky:Z

    if-eqz p1, :cond_6

    .line 699
    iget-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->pressed:Z

    if-eqz p1, :cond_4

    .line 700
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_0

    .line 701
    :cond_4
    iget-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->hoverdOver:Z

    if-eqz p1, :cond_5

    .line 702
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->KEY_STATE_HOVERED:[I

    goto :goto_0

    .line 704
    :cond_5
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_0

    .line 707
    :cond_6
    iget-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->pressed:Z

    if-eqz p1, :cond_7

    .line 708
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->KEY_STATE_PRESSED:[I

    goto :goto_0

    .line 709
    :cond_7
    iget-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->hoverdOver:Z

    if-eqz p1, :cond_8

    .line 710
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->KEY_STATE_HOVERED:[I

    :cond_8
    :goto_0
    return-object v0
.end method

.method public isInside(II)Z
    .locals 7

    .line 643
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->edgeFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 644
    :goto_0
    iget v3, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 645
    :goto_1
    iget v4, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 646
    :goto_2
    iget v5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 647
    :goto_3
    iget v6, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    if-ge p1, v6, :cond_4

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    add-int/2addr v6, v0

    if-gt p1, v6, :cond_7

    :cond_4
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    iget v6, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    add-int/2addr v6, v0

    if-lt p1, v6, :cond_5

    if-eqz v3, :cond_7

    if-lt p1, v0, :cond_7

    :cond_5
    iget p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    if-ge p2, p1, :cond_6

    if-eqz v4, :cond_7

    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_7

    :cond_6
    iget p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    add-int/2addr v0, p1

    if-lt p2, v0, :cond_8

    if-eqz v5, :cond_7

    if-lt p2, p1, :cond_7

    goto :goto_4

    :cond_7
    return v2

    :cond_8
    :goto_4
    return v1
.end method

.method public onHoverEnter()V
    .locals 1

    const/4 v0, 0x1

    .line 578
    iput-boolean v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->hoverdOver:Z

    return-void
.end method

.method public onHoverExit()V
    .locals 1

    const/4 v0, 0x0

    .line 586
    iput-boolean v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->hoverdOver:Z

    return-void
.end method

.method public onPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 570
    iput-boolean v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->pressed:Z

    return-void
.end method

.method public onReleased(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 606
    iput-boolean v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->pressed:Z

    .line 607
    iget-boolean v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->sticky:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 608
    iget-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->on:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->on:Z

    :cond_0
    return-void
.end method

.method parseCSV(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 615
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ","

    const/4 v2, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v2, v0

    .line 617
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 621
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 622
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 625
    :try_start_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 627
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing keycodes "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Keyboard"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public squaredDistanceFrom(II)I
    .locals 2

    .line 665
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    iget v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 666
    iget p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    iget v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    sub-int/2addr p1, p2

    mul-int v0, v0, v0

    mul-int p1, p1, p1

    add-int/2addr v0, p1

    return v0
.end method
