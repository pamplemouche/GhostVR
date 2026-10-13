.class public Lorg/chromium/components/embedder_support/delegate/ColorPickerSimple;
.super Landroid/widget/ListView;
.source "PG"

# interfaces
.implements LjT0;


# static fields
.field public static final x:[I

.field public static final y:[I


# instance fields
.field public w:LlT0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lorg/chromium/components/embedder_support/delegate/ColorPickerSimple;->x:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerSimple;->y:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff0001
        -0xffff01
        -0xff0100
        -0xff01
        -0x100
        -0x1000000
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x7f130212
        0x7f13020e
        0x7f13020c
        0x7f13020f
        0x7f130210
        0x7f130215
        0x7f13020b
        0x7f130214
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/components/embedder_support/delegate/ColorSuggestion;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerSimple;->w:LlT0;

    iget p1, p1, Lorg/chromium/components/embedder_support/delegate/ColorSuggestion;->a:I

    invoke-interface {v0, p1}, LlT0;->a(I)V

    return-void
.end method
