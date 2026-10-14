.class public Landroid/support/v4/i/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:[Landroid/support/v4/i/h;


# direct methods
.method public constructor <init>(I[Landroid/support/v4/i/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/i/g;->a:I

    iput-object p2, p0, Landroid/support/v4/i/g;->b:[Landroid/support/v4/i/h;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Landroid/support/v4/i/g;->a:I

    return v0
.end method

.method public b()[Landroid/support/v4/i/h;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/i/g;->b:[Landroid/support/v4/i/h;

    return-object v0
.end method
