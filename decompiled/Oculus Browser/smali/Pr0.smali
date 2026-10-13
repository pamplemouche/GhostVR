.class public final LPr0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LPr0;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a()LQr0;
    .locals 7

    .line 1
    new-instance v6, LQr0;

    iget-object v1, p0, LPr0;->a:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, p0, LPr0;->c:Z

    iget-boolean v4, p0, LPr0;->b:Z

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LQr0;-><init>(Landroid/graphics/drawable/Drawable;ZZZLOr0;)V

    return-object v6
.end method
