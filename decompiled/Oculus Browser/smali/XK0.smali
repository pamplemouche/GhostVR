.class public LXK0;
.super Landroid/util/Property;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LXK0;->a:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    .line 2
    iget p1, p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->a0:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    check-cast p2, Ljava/lang/Float;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->a0:F

    .line 3
    iget-object p1, p0, LXK0;->a:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    .line 4
    iget-object p2, p1, LQK0;->w:Lb30;

    if-nez p2, :cond_0

    .line 5
    invoke-interface {p1}, LZ20;->a()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p2, Lb30;->a:La30;

    if-eqz p2, :cond_1

    .line 7
    invoke-interface {p2, p1}, La30;->a(LZ20;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p1}, LZ20;->a()V

    :goto_0
    return-void
.end method
