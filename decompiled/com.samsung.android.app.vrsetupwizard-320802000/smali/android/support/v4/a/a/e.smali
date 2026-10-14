.class public final Landroid/support/v4/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/a/a/b;


# instance fields
.field private final a:Landroid/support/v4/i/a;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/support/v4/i/a;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/a/a/e;->a:Landroid/support/v4/i/a;

    iput p2, p0, Landroid/support/v4/a/a/e;->c:I

    iput p3, p0, Landroid/support/v4/a/a/e;->b:I

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/i/a;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/a/e;->a:Landroid/support/v4/i/a;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Landroid/support/v4/a/a/e;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Landroid/support/v4/a/a/e;->b:I

    return v0
.end method
