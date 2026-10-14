.class public Landroid/support/constraint/a/a/o;
.super Landroid/support/constraint/a/a/i;


# instance fields
.field protected ac:[Landroid/support/constraint/a/a/i;

.field protected ad:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/constraint/a/a/i;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/support/constraint/a/a/i;

    iput-object v0, p0, Landroid/support/constraint/a/a/o;->ac:[Landroid/support/constraint/a/a/i;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/o;->ad:I

    return-void
.end method


# virtual methods
.method public H()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/o;->ad:I

    return-void
.end method

.method public b(Landroid/support/constraint/a/a/i;)V
    .locals 3

    iget v0, p0, Landroid/support/constraint/a/a/o;->ad:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/a/a/o;->ac:[Landroid/support/constraint/a/a/i;

    array-length v2, v1

    if-le v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/a/i;

    iput-object v0, p0, Landroid/support/constraint/a/a/o;->ac:[Landroid/support/constraint/a/a/i;

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/o;->ac:[Landroid/support/constraint/a/a/i;

    iget v1, p0, Landroid/support/constraint/a/a/o;->ad:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/a/a/o;->ad:I

    return-void
.end method
