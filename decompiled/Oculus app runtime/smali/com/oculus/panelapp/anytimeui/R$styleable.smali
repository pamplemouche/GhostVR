.class public final Lcom/oculus/panelapp/anytimeui/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Common:[I

.field public static final Common_active:I = 0x0

.field public static final Common_icon:I = 0x1

.field public static final Common_uri:I = 0x2

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_layoutManager:I = 0x1

.field public static final RecyclerView_reverseLayout:I = 0x2

.field public static final RecyclerView_spanCount:I = 0x3

.field public static final RecyclerView_stackFromEnd:I = 0x4

.field public static final SystemDialog:[I

.field public static final SystemDialogStandardLayout:[I

.field public static final SystemDialogStandardLayout_acceptResult:I = 0x0

.field public static final SystemDialogStandardLayout_acceptText:I = 0x1

.field public static final SystemDialogStandardLayout_backResult:I = 0x2

.field public static final SystemDialogStandardLayout_calloutText:I = 0x3

.field public static final SystemDialogStandardLayout_cancelResult:I = 0x4

.field public static final SystemDialogStandardLayout_cancelText:I = 0x5

.field public static final SystemDialogStandardLayout_contentText:I = 0x6

.field public static final SystemDialogStandardLayout_customLayout:I = 0x7

.field public static final SystemDialogStandardLayout_gearResult:I = 0x8

.field public static final SystemDialogStandardLayout_icon:I = 0x9

.field public static final SystemDialogStandardLayout_middleResult:I = 0xa

.field public static final SystemDialogStandardLayout_middleText:I = 0xb

.field public static final SystemDialogStandardLayout_tags:I = 0xc

.field public static final SystemDialogStandardLayout_titleText:I = 0xd

.field public static final SystemDialog_icon:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 1730
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/R$styleable;->Common:[I

    const/4 v0, 0x5

    .line 1734
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oculus/panelapp/anytimeui/R$styleable;->RecyclerView:[I

    const/4 v0, 0x1

    .line 1740
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f030010

    aput v2, v0, v1

    sput-object v0, Lcom/oculus/panelapp/anytimeui/R$styleable;->SystemDialog:[I

    const/16 v0, 0xe

    .line 1742
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/oculus/panelapp/anytimeui/R$styleable;->SystemDialogStandardLayout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f030002
        0x7f030010
        0x7f030044
    .end array-data

    :array_1
    .array-data 4
        0x10100c4
        0x7f03002d
        0x7f030033
        0x7f03003b
        0x7f03003c
    .end array-data

    :array_2
    .array-data 4
        0x7f030000
        0x7f030001
        0x7f030003
        0x7f030006
        0x7f030007
        0x7f030008
        0x7f03000b
        0x7f03000c
        0x7f03000e
        0x7f030010
        0x7f03002e
        0x7f03002f
        0x7f030040
        0x7f030043
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
