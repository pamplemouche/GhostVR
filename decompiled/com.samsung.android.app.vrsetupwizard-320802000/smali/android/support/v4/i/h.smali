.class public Landroid/support/v4/i/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/support/v4/k/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Landroid/support/v4/i/h;->a:Landroid/net/Uri;

    iput p2, p0, Landroid/support/v4/i/h;->b:I

    iput p3, p0, Landroid/support/v4/i/h;->c:I

    iput-boolean p4, p0, Landroid/support/v4/i/h;->d:Z

    iput p5, p0, Landroid/support/v4/i/h;->e:I

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/i/h;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Landroid/support/v4/i/h;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Landroid/support/v4/i/h;->c:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/i/h;->d:Z

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Landroid/support/v4/i/h;->e:I

    return v0
.end method
