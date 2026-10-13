.class public LYd0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LWd0;

.field public final b:LDa0;

.field public final c:LCM0;

.field public final d:I

.field public final e:LQd1;

.field public final f:Landroid/graphics/drawable/Drawable;

.field public g:LS01;


# direct methods
.method public constructor <init>(Landroid/content/Context;LQd1;LWd0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LYd0;->e:LQd1;

    .line 3
    iput-object p3, p0, LYd0;->a:LWd0;

    .line 4
    new-instance p2, LDa0;

    invoke-direct {p2}, LDa0;-><init>()V

    iput-object p2, p0, LYd0;->b:LDa0;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, LEa0;->a(Landroid/content/res/Resources;)LCM0;

    move-result-object p2

    iput-object p2, p0, LYd0;->c:LCM0;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700b6

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, LYd0;->d:I

    const p2, 0x7f080161

    const p3, 0x7f060079

    .line 7
    invoke-static {p1, p2, p3}, LDM0;->a(Landroid/content/Context;II)LDM0;

    move-result-object p1

    iput-object p1, p0, LYd0;->f:Landroid/graphics/drawable/Drawable;

    return-void
.end method
