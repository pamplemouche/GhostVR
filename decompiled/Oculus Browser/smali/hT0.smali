.class public LhT0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:LiT0;


# direct methods
.method public constructor <init>(LiT0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LhT0;->w:LiT0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, LhT0;->w:LiT0;

    const v0, 0x7f0b0284

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b00dd

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p1, LiT0;->w:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p1, LiT0;->w:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;

    .line 8
    iput-object p1, v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->z:LlT0;

    .line 9
    iget p1, p1, LiT0;->C:I

    .line 10
    iput p1, v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->A:I

    .line 11
    iget-object v1, v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->B:[F

    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 12
    invoke-virtual {v0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->a()V

    return-void
.end method
