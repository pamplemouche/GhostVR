.class public Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/keyboardv2/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field public defaultHeight:I

.field public defaultHorizontalGap:I

.field public defaultWidth:I

.field mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field public mode:I

.field private parent:Lcom/oculus/panelapp/keyboardv2/Keyboard;

.field public rowEdgeFlags:I

.field public verticalGap:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/oculus/panelapp/keyboardv2/Keyboard;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    .line 164
    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->parent:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    .line 165
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 166
    sget v1, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_keyWidth:I

    .line 168
    invoke-static {p2}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->access$000(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I

    move-result v2

    invoke-static {p2}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->access$100(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I

    move-result v3

    .line 167
    invoke-static {v0, v1, v2, v3}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->defaultWidth:I

    .line 169
    sget v1, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_keyHeight:I

    .line 171
    invoke-static {p2}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->access$200(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I

    move-result v2

    invoke-static {p2}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->access$300(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I

    move-result v3

    .line 170
    invoke-static {v0, v1, v2, v3}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->defaultHeight:I

    .line 172
    sget v1, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_horizontalGap:I

    .line 176
    invoke-static {p2}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->access$000(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I

    move-result v2

    .line 177
    invoke-static {p2}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->access$400(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I

    move-result v3

    .line 173
    invoke-static {v0, v1, v2, v3}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->defaultHorizontalGap:I

    .line 178
    sget v1, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_verticalGap:I

    .line 182
    invoke-static {p2}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->access$200(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I

    move-result v2

    .line 183
    invoke-static {p2}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->access$500(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I

    move-result p2

    .line 179
    invoke-static {v0, v1, v2, p2}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->verticalGap:I

    .line 184
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object p3, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Row:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 186
    sget p2, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Row_rowEdgeFlags:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->rowEdgeFlags:I

    .line 187
    sget p2, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_Row_keyboardMode:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->mode:I

    return-void
.end method

.method public constructor <init>(Lcom/oculus/panelapp/keyboardv2/Keyboard;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    .line 160
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->parent:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;)Lcom/oculus/panelapp/keyboardv2/Keyboard;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->parent:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    return-object p0
.end method


# virtual methods
.method public getKeys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    return-object v0
.end method
