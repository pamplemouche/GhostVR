.class public LuX0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LwX0;


# static fields
.field public static d:LuX0;


# instance fields
.field public final a:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field public final b:LqX0;

.field public final c:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LtX0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LtX0;-><init>(LuX0;LsX0;)V

    iput-object v0, p0, LuX0;->a:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 3
    new-instance v0, LqX0;

    invoke-direct {v0}, LqX0;-><init>()V

    iput-object v0, p0, LuX0;->b:LqX0;

    .line 4
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v1, "captioning"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, LuX0;->c:Landroid/view/accessibility/CaptioningManager;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)LrX0;
    .locals 9

    if-nez p1, :cond_0

    .line 16
    new-instance p1, LrX0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, LrX0;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Typeface;)V

    goto :goto_4

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 18
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 19
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_2
    move-object v4, v1

    .line 21
    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    :cond_3
    move-object v5, v1

    .line 23
    :goto_2
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v6, v0

    goto :goto_3

    :cond_4
    move-object v6, v1

    .line 25
    :goto_3
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_5
    move-object v7, v1

    .line 27
    new-instance v0, LrX0;

    .line 28
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, LrX0;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Typeface;)V

    move-object p1, v0

    :goto_4
    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, LuX0;->b:LqX0;

    iget-object v1, p0, LuX0;->c:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    .line 2
    iput-boolean v1, v0, LqX0;->a:Z

    .line 3
    invoke-virtual {v0}, LqX0;->b()V

    .line 4
    iget-object v0, p0, LuX0;->b:LqX0;

    iget-object v1, p0, LuX0;->c:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    invoke-virtual {v0, v1}, LqX0;->a(F)V

    .line 5
    iget-object v0, p0, LuX0;->b:LqX0;

    iget-object v1, p0, LuX0;->c:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, LuX0;->b:LqX0;

    iget-object v1, p0, LuX0;->c:Landroid/view/accessibility/CaptioningManager;

    .line 7
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    invoke-virtual {p0, v1}, LuX0;->a(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)LrX0;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, LqX0;->a(LrX0;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 9
    throw v0
.end method

.method public a(LvX0;)V
    .locals 2

    .line 10
    iget-object v0, p0, LuX0;->b:LqX0;

    invoke-virtual {v0}, LqX0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, LuX0;->c:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, LuX0;->a:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 12
    invoke-virtual {p0}, LuX0;->a()V

    .line 13
    :cond_0
    iget-object v0, p0, LuX0;->b:LqX0;

    .line 14
    iget-object v0, v0, LqX0;->i:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, LuX0;->b:LqX0;

    invoke-virtual {v0, p1}, LqX0;->a(LvX0;)V

    return-void
.end method

.method public b(LvX0;)V
    .locals 1

    .line 1
    iget-object v0, p0, LuX0;->b:LqX0;

    invoke-virtual {v0}, LqX0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, LuX0;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, LuX0;->b:LqX0;

    invoke-virtual {v0, p1}, LqX0;->a(LvX0;)V

    return-void
.end method

.method public c(LvX0;)V
    .locals 1

    .line 1
    iget-object v0, p0, LuX0;->b:LqX0;

    .line 2
    iget-object v0, v0, LqX0;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, LuX0;->b:LqX0;

    invoke-virtual {p1}, LqX0;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, LuX0;->c:Landroid/view/accessibility/CaptioningManager;

    iget-object v0, p0, LuX0;->a:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    :cond_0
    return-void
.end method
