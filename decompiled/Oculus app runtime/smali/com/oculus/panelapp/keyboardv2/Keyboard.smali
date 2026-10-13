.class public Lcom/oculus/panelapp/keyboardv2/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;,
        Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;
    }
.end annotation


# static fields
.field private static final DEFAULT_FONT:Ljava/lang/String; = "Fonts/Roboto-Regular.ttf"

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field private static final GRID_HEIGHT:I = 0x5

.field private static final GRID_SIZE:I = 0x32

.field private static final GRID_WIDTH:I = 0xa

.field public static final NO_KEY_TO_HIGHLIGHT:I = -0x1

.field private static SEARCH_DISTANCE:F = 1.8f

.field static final TAG:Ljava/lang/String; = "Keyboard"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"


# instance fields
.field private mActionType:Lcom/oculus/panelapp/keyboardv2/ActionType;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mDefaultHeight:I

.field private mDefaultHorizontalGap:I

.field private mDefaultKeyTextColor:I

.field private mDefaultKeyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

.field private mDefaultLocale:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

.field private mDefaultVerticalGap:I

.field private mDefaultWidth:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mGridNeighbors:[[I

.field private mIme:Ljava/lang/String;

.field private mKeyFontFilePath:Ljava/lang/String;

.field private mKeySubTextSize:I

.field private mKeyTextSize:I

.field private mKeyToHighlight:I

.field private mKeyboardMode:I

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

.field private mProximityThreshold:I

.field private mShiftKeyIndices:[I

.field private mShifted:Z

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private mXmlLayoutResId:I

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIILcom/oculus/panelapp/keyboardv2/ActionType;Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;)V
    .locals 1

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 85
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mShiftKeyIndices:[I

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->rows:Ljava/util/ArrayList;

    .line 754
    iput-object p7, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultLocale:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    .line 755
    iput-object p8, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultKeyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    .line 756
    iput-object p6, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mActionType:Lcom/oculus/panelapp/keyboardv2/ActionType;

    .line 757
    iput p4, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDisplayWidth:I

    .line 758
    iput p5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDisplayHeight:I

    .line 759
    iput p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mXmlLayoutResId:I

    .line 760
    iput-object p9, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mPanelApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    const/4 p2, 0x0

    .line 762
    iput p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultHorizontalGap:I

    .line 763
    iget p4, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDisplayWidth:I

    div-int/lit8 p4, p4, 0xa

    iput p4, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultWidth:I

    .line 764
    iput p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultVerticalGap:I

    .line 765
    iget p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultWidth:I

    iput p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultHeight:I

    .line 766
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mKeys:Ljava/util/List;

    .line 767
    iput p3, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mKeyboardMode:I

    .line 768
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget p3, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mXmlLayoutResId:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/oculus/panelapp/keyboardv2/ActionType;Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;)V
    .locals 11

    .line 791
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 792
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 787
    invoke-direct/range {v1 .. v10}, Lcom/oculus/panelapp/keyboardv2/Keyboard;-><init>(Landroid/content/Context;IIIILcom/oculus/panelapp/keyboardv2/ActionType;Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/oculus/panelapp/keyboardv2/ActionType;Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;)V
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 731
    invoke-direct/range {v0 .. v7}, Lcom/oculus/panelapp/keyboardv2/Keyboard;-><init>(Landroid/content/Context;IILcom/oculus/panelapp/keyboardv2/ActionType;Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;IILcom/oculus/panelapp/keyboardv2/ActionType;Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;)V
    .locals 12

    move-object v7, p0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    .line 824
    invoke-direct/range {v0 .. v6}, Lcom/oculus/panelapp/keyboardv2/Keyboard;-><init>(Landroid/content/Context;ILcom/oculus/panelapp/keyboardv2/ActionType;Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;)V

    const/4 v0, 0x0

    .line 828
    iput v0, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mTotalWidth:I

    .line 830
    new-instance v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;-><init>(Lcom/oculus/panelapp/keyboardv2/Keyboard;)V

    .line 831
    iget v2, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultHeight:I

    iput v2, v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->defaultHeight:I

    .line 832
    iget v2, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultWidth:I

    iput v2, v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->defaultWidth:I

    .line 833
    iget v2, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultHorizontalGap:I

    iput v2, v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->defaultHorizontalGap:I

    .line 834
    iget v2, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultVerticalGap:I

    iput v2, v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->verticalGap:I

    const/16 v2, 0xc

    .line 835
    iput v2, v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->rowEdgeFlags:I

    const/4 v2, -0x1

    move/from16 v3, p4

    if-ne v3, v2, :cond_0

    const v2, 0x7fffffff

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 837
    :goto_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v3, v8, :cond_4

    move-object v8, p3

    .line 838
    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ge v5, v2, :cond_1

    .line 839
    iget v10, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultWidth:I

    add-int/2addr v10, v6

    add-int v10, v10, p5

    iget v11, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDisplayWidth:I

    if-le v10, v11, :cond_2

    .line 841
    :cond_1
    iget v5, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultVerticalGap:I

    iget v6, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultHeight:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 844
    :cond_2
    new-instance v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    invoke-direct {v10, v1}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;-><init>(Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;)V

    .line 845
    iput v6, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    .line 846
    iput v4, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    .line 847
    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 848
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    .line 849
    iget-object v11, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    sub-int/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    .line 851
    iget v9, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    iget v11, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->gap:I

    add-int/2addr v9, v11

    add-int/2addr v6, v9

    .line 852
    iget-object v9, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    iget-object v9, v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    iget v9, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mTotalWidth:I

    if-le v6, v9, :cond_3

    .line 855
    iput v6, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mTotalWidth:I

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 858
    :cond_4
    iget v0, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultHeight:I

    add-int/2addr v4, v0

    iput v4, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mTotalHeight:I

    .line 859
    iget-object v0, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDisplayWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultWidth:I

    return p0
.end method

.method static synthetic access$1000(Lcom/oculus/panelapp/keyboardv2/Keyboard;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mKeyFontFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oculus/panelapp/keyboardv2/Keyboard;)Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mPanelApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDisplayHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultHeight:I

    return p0
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultHorizontalGap:I

    return p0
.end method

.method static synthetic access$500(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultVerticalGap:I

    return p0
.end method

.method static synthetic access$700(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultKeyTextColor:I

    return p0
.end method

.method static synthetic access$800(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mKeyTextSize:I

    return p0
.end method

.method static synthetic access$900(Lcom/oculus/panelapp/keyboardv2/Keyboard;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mKeySubTextSize:I

    return p0
.end method

.method private computeNearestNeighbors()V
    .locals 11

    .line 942
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getMinWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mCellWidth:I

    .line 943
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mCellHeight:I

    const/16 v0, 0x32

    .line 944
    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mGridNeighbors:[[I

    .line 945
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 946
    iget v1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mCellWidth:I

    mul-int/lit8 v1, v1, 0xa

    .line 947
    iget v2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mCellHeight:I

    mul-int/lit8 v2, v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 951
    :goto_2
    iget-object v8, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 952
    iget-object v8, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    .line 953
    invoke-virtual {v8, v4, v5}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v9

    iget v10, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mProximityThreshold:I

    if-lt v9, v10, :cond_0

    iget v9, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mCellWidth:I

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    .line 954
    invoke-virtual {v8, v9, v5}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v9

    iget v10, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mProximityThreshold:I

    if-lt v9, v10, :cond_0

    iget v9, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mCellWidth:I

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mCellHeight:I

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x1

    .line 955
    invoke-virtual {v8, v9, v10}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v9

    iget v10, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mProximityThreshold:I

    if-lt v9, v10, :cond_0

    iget v9, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mCellHeight:I

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    .line 957
    invoke-virtual {v8, v4, v9}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mProximityThreshold:I

    if-ge v8, v9, :cond_1

    :cond_0
    add-int/lit8 v8, v7, 0x1

    .line 958
    aput v6, v0, v7

    move v7, v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 961
    :cond_2
    new-array v6, v7, [I

    .line 962
    invoke-static {v0, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 963
    iget-object v7, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mGridNeighbors:[[I

    iget v8, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mCellHeight:I

    div-int v9, v5, v8

    mul-int/lit8 v9, v9, 0xa

    iget v10, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mCellWidth:I

    div-int v10, v4, v10

    add-int/2addr v9, v10

    aput-object v6, v7, v9

    add-int/2addr v5, v8

    goto :goto_1

    .line 948
    :cond_3
    iget v5, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mCellWidth:I

    add-int/2addr v4, v5

    goto :goto_0

    :cond_4
    return-void
.end method

.method static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .locals 3

    .line 1101
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-nez v0, :cond_0

    return p3

    .line 1103
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1104
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p0

    return p0

    .line 1105
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    int-to-float p3, p3

    .line 1107
    invoke-virtual {p0, p1, p2, p2, p3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_2
    return p3
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    const-string v8, "Keyboard"

    .line 1018
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v1, 0x0

    const/4 v10, 0x0

    move-object v2, v1

    move-object v14, v2

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_0
    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x0

    .line 1023
    :cond_0
    :goto_2
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v15, 0x1

    if-eq v3, v15, :cond_9

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 1025
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Row"

    .line 1026
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1029
    invoke-virtual {v7, v9, v0}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;

    move-result-object v14

    .line 1030
    iget-object v3, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    iget v3, v14, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->mode:I

    if-eqz v3, :cond_1

    iget v3, v14, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->mode:I

    iget v4, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mKeyboardMode:I

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_2

    .line 1033
    invoke-direct {v7, v0}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_2
    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "Key"

    .line 1036
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move v4, v13

    move v5, v11

    move-object/from16 v6, p2

    .line 1038
    invoke-virtual/range {v1 .. v6}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->createKeyFromXml(Landroid/content/Context;Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    move-result-object v1

    .line 1039
    iget v2, v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    if-ltz v2, :cond_4

    .line 1040
    iget-object v2, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    iget-object v2, v14, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v2, v1

    const/4 v1, 0x1

    goto :goto_2

    .line 1043
    :cond_5
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1044
    invoke-direct {v7, v9, v0}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto :goto_2

    :cond_6
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    if-eqz v1, :cond_8

    .line 1049
    iget v1, v2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->gap:I

    iget v3, v2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    add-int/2addr v1, v3

    add-int/2addr v13, v1

    .line 1050
    iget v1, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mTotalWidth:I

    if-le v13, v1, :cond_7

    .line 1051
    iput v13, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mTotalWidth:I

    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    if-eqz v12, :cond_0

    .line 1055
    iget v3, v14, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->verticalGap:I

    add-int/2addr v11, v3

    .line 1056
    iget v3, v14, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;->defaultHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v11, v3

    const/4 v12, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 1064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1067
    :cond_9
    iget v0, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultVerticalGap:I

    sub-int/2addr v11, v0

    iput v11, v7, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mTotalHeight:I

    return-void
.end method

.method private parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 2

    .line 1080
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1081
    sget p2, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_keyWidth:I

    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDisplayWidth:I

    div-int/lit8 v1, v0, 0xa

    .line 1082
    invoke-static {p1, p2, v0, v1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultWidth:I

    .line 1083
    sget p2, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_keyHeight:I

    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDisplayHeight:I

    const/16 v1, 0x32

    invoke-static {p1, p2, v0, v1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultHeight:I

    .line 1084
    sget p2, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_horizontalGap:I

    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDisplayWidth:I

    const/4 v1, 0x0

    .line 1085
    invoke-static {p1, p2, v0, v1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultHorizontalGap:I

    .line 1086
    sget p2, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_verticalGap:I

    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDisplayHeight:I

    .line 1087
    invoke-static {p1, p2, v0, v1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultVerticalGap:I

    .line 1088
    sget p2, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_keyTextColor:I

    const/high16 v0, -0x1000000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultKeyTextColor:I

    .line 1089
    sget p2, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_keyToHighlight:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mKeyToHighlight:I

    .line 1090
    sget p2, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_keyTextSize:I

    const/16 v0, 0x1a

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mKeyTextSize:I

    .line 1091
    sget p2, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_keyFont:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "Fonts/Roboto-Regular.ttf"

    goto :goto_0

    .line 1092
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mKeyFontFilePath:Ljava/lang/String;

    .line 1093
    sget p2, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_keySubTextSize:I

    const/16 v0, 0x8

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mKeySubTextSize:I

    .line 1094
    iget p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultWidth:I

    int-to-float p2, p2

    sget v0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->SEARCH_DISTANCE:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mProximityThreshold:I

    .line 1095
    iget p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mProximityThreshold:I

    mul-int p2, p2, p2

    iput p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mProximityThreshold:I

    .line 1096
    sget p2, Lcom/oculus/panelapp/keyboardv2/R$styleable;->Keyboard_ime:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mIme:Ljava/lang/String;

    .line 1097
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1072
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1073
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/Context;Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;
    .locals 10

    .line 1005
    new-instance v9, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget-object v6, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mActionType:Lcom/oculus/panelapp/keyboardv2/ActionType;

    iget-object v7, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultLocale:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    iget-object v8, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultKeyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;-><init>(Landroid/content/Context;Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;IILandroid/content/res/XmlResourceParser;Lcom/oculus/panelapp/keyboardv2/ActionType;Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;)V

    return-object v9
.end method

.method protected createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;
    .locals 1

    .line 1000
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;-><init>(Landroid/content/res/Resources;Lcom/oculus/panelapp/keyboardv2/Keyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 912
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mTotalHeight:I

    return v0
.end method

.method protected getHorizontalGap()I
    .locals 1

    .line 875
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method public getIme()Ljava/lang/String;
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mIme:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "simple"

    :goto_0
    return-object v0
.end method

.method protected getKeyHeight()I
    .locals 1

    .line 891
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method public getKeyToHighlight()I
    .locals 1

    .line 992
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mKeyToHighlight:I

    return v0
.end method

.method protected getKeyWidth()I
    .locals 1

    .line 899
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getLayoutResId()I
    .locals 1

    .line 863
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mXmlLayoutResId:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 916
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mTotalWidth:I

    return v0
.end method

.method public getNearestKeys(II)[I
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mGridNeighbors:[[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->computeNearestNeighbors()V

    :cond_0
    if-ltz p1, :cond_1

    .line 978
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getMinWidth()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 979
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mCellHeight:I

    div-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0xa

    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mCellWidth:I

    div-int/2addr p1, v0

    add-int/2addr p2, p1

    const/16 p1, 0x32

    if-ge p2, p1, :cond_1

    .line 981
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mGridNeighbors:[[I

    aget-object p1, p1, p2

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 984
    new-array p1, p1, [I

    return-object p1
.end method

.method public getRows()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/panelapp/keyboardv2/Keyboard$Row;",
            ">;"
        }
    .end annotation

    .line 867
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->rows:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShiftKeyIndex()I
    .locals 2

    .line 937
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mShiftKeyIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getShiftKeyIndices()[I
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mShiftKeyIndices:[I

    return-object v0
.end method

.method protected getVerticalGap()I
    .locals 1

    .line 883
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .line 928
    iget-boolean v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mShifted:Z

    return v0
.end method

.method protected setHorizontalGap(I)V
    .locals 0

    .line 879
    iput p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultHorizontalGap:I

    return-void
.end method

.method protected setKeyHeight(I)V
    .locals 0

    .line 895
    iput p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultHeight:I

    return-void
.end method

.method public setKeyToHighlight(I)V
    .locals 0

    .line 996
    iput p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mKeyToHighlight:I

    return-void
.end method

.method protected setKeyWidth(I)V
    .locals 0

    .line 903
    iput p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultWidth:I

    return-void
.end method

.method public setShifted(Z)Z
    .locals 1

    .line 920
    iget-boolean v0, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mShifted:Z

    if-eq v0, p1, :cond_0

    .line 921
    iput-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mShifted:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected setVerticalGap(I)V
    .locals 0

    .line 887
    iput p1, p0, Lcom/oculus/panelapp/keyboardv2/Keyboard;->mDefaultVerticalGap:I

    return-void
.end method
