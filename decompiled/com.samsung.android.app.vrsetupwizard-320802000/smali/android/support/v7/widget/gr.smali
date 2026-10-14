.class Landroid/support/v7/widget/gr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SeslColorPicker;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslColorPicker;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/gr;->a:Landroid/support/v7/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p2, p0, Landroid/support/v7/widget/gr;->a:Landroid/support/v7/widget/SeslColorPicker;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Landroid/support/v7/widget/SeslColorPicker;->a(Landroid/support/v7/widget/SeslColorPicker;Z)Z

    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    iget-object p1, p0, Landroid/support/v7/widget/gr;->a:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslColorPicker;->a(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/gx;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/gx;->a(F)V

    iget-object p1, p0, Landroid/support/v7/widget/gr;->a:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslColorPicker;->a(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/gx;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/gx;->a()I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/gr;->a:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p2}, Landroid/support/v7/widget/SeslColorPicker;->c(Landroid/support/v7/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroid/support/v7/widget/gr;->a:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p2}, Landroid/support/v7/widget/SeslColorPicker;->c(Landroid/support/v7/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/gr;->a:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p2}, Landroid/support/v7/widget/SeslColorPicker;->d(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslOpacitySeekBar;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/support/v7/widget/gr;->a:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p2}, Landroid/support/v7/widget/SeslColorPicker;->d(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslOpacitySeekBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->c(I)V

    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/gr;->a:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p2}, Landroid/support/v7/widget/SeslColorPicker;->e(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/gw;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroid/support/v7/widget/gr;->a:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p2}, Landroid/support/v7/widget/SeslColorPicker;->e(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/gw;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/support/v7/widget/gw;->a(I)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
