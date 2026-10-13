.class public final Lk6;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lv6;


# instance fields
.field public final synthetic a:Ll4;

.field public final synthetic b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ll4;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk6;->a:Ll4;

    iput-object p2, p0, Lk6;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lp6;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lk6;->a:Ll4;

    const/4 v0, 0x1

    iget-object v1, p0, Lk6;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Ll4;->a(ILandroid/os/Handler;)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p1, Lp6;->b:I

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lk6;->a:Ll4;

    iget-object p1, p1, Lp6;->a:Landroid/graphics/Typeface;

    iget-object v1, p0, Lk6;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Ll4;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lk6;->a:Ll4;

    iget-object v1, p0, Lk6;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Ll4;->a(ILandroid/os/Handler;)V

    :goto_0
    return-void
.end method
