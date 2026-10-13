.class public LtX0;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "PG"


# instance fields
.field public final synthetic a:LuX0;


# direct methods
.method public synthetic constructor <init>(LuX0;LsX0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LtX0;->a:LuX0;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabledChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LtX0;->a:LuX0;

    .line 2
    iget-object v0, v0, LuX0;->b:LqX0;

    .line 3
    iput-boolean p1, v0, LqX0;->a:Z

    .line 4
    invoke-virtual {v0}, LqX0;->b()V

    return-void
.end method

.method public onFontScaleChanged(F)V
    .locals 1

    .line 1
    iget-object v0, p0, LtX0;->a:LuX0;

    .line 2
    iget-object v0, v0, LuX0;->b:LqX0;

    .line 3
    invoke-virtual {v0, p1}, LqX0;->a(F)V

    return-void
.end method

.method public onLocaleChanged(Ljava/util/Locale;)V
    .locals 0

    .line 1
    iget-object p1, p0, LtX0;->a:LuX0;

    .line 2
    iget-object p1, p1, LuX0;->b:LqX0;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 1

    .line 1
    iget-object v0, p0, LtX0;->a:LuX0;

    .line 2
    invoke-virtual {v0, p1}, LuX0;->a(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)LrX0;

    move-result-object p1

    .line 3
    iget-object v0, p0, LtX0;->a:LuX0;

    .line 4
    iget-object v0, v0, LuX0;->b:LqX0;

    .line 5
    invoke-virtual {v0, p1}, LqX0;->a(LrX0;)V

    return-void
.end method
