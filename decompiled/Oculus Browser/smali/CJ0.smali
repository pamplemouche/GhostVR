.class public LCJ0;
.super Lf00;
.source "PG"

# interfaces
.implements LIJ0;


# instance fields
.field public final C:I

.field public final D:I

.field public E:LJJ0;

.field public final F:Lv30;

.field public G:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lf00;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result v0

    iput v0, p0, LCJ0;->C:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result p1

    iput p1, p0, LCJ0;->D:I

    .line 4
    new-instance p1, LBJ0;

    invoke-direct {p1, p0}, LBJ0;-><init>(LCJ0;)V

    iput-object p1, p0, LCJ0;->F:Lv30;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, LCJ0;->G:Z

    .line 2
    invoke-static {}, LZ60;->a()Z

    const-string p1, "HorizontalTabSwitcherAndroid"

    .line 3
    invoke-static {p1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->d()Z

    .line 5
    iget-boolean p1, p0, LCJ0;->G:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 6
    iget p1, p0, LCJ0;->D:I

    goto :goto_0

    :cond_0
    iget p1, p0, LCJ0;->C:I

    .line 7
    :goto_0
    invoke-virtual {p0, p1, v0}, Lf00;->a(IZ)V

    return-void
.end method
