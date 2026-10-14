.class public final enum Landroid/support/constraint/a/a/k;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/constraint/a/a/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroid/support/constraint/a/a/k;

.field public static final enum b:Landroid/support/constraint/a/a/k;

.field public static final enum c:Landroid/support/constraint/a/a/k;

.field public static final enum d:Landroid/support/constraint/a/a/k;

.field private static final synthetic e:[Landroid/support/constraint/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroid/support/constraint/a/a/k;

    const/4 v1, 0x0

    const-string v2, "FIXED"

    invoke-direct {v0, v2, v1}, Landroid/support/constraint/a/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/a/a/k;->a:Landroid/support/constraint/a/a/k;

    new-instance v0, Landroid/support/constraint/a/a/k;

    const/4 v2, 0x1

    const-string v3, "WRAP_CONTENT"

    invoke-direct {v0, v3, v2}, Landroid/support/constraint/a/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/a/a/k;->b:Landroid/support/constraint/a/a/k;

    new-instance v0, Landroid/support/constraint/a/a/k;

    const/4 v3, 0x2

    const-string v4, "MATCH_CONSTRAINT"

    invoke-direct {v0, v4, v3}, Landroid/support/constraint/a/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/a/a/k;->c:Landroid/support/constraint/a/a/k;

    new-instance v0, Landroid/support/constraint/a/a/k;

    const/4 v4, 0x3

    const-string v5, "MATCH_PARENT"

    invoke-direct {v0, v5, v4}, Landroid/support/constraint/a/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/a/a/k;->d:Landroid/support/constraint/a/a/k;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/support/constraint/a/a/k;

    sget-object v5, Landroid/support/constraint/a/a/k;->a:Landroid/support/constraint/a/a/k;

    aput-object v5, v0, v1

    sget-object v1, Landroid/support/constraint/a/a/k;->b:Landroid/support/constraint/a/a/k;

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/constraint/a/a/k;->c:Landroid/support/constraint/a/a/k;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/constraint/a/a/k;->d:Landroid/support/constraint/a/a/k;

    aput-object v1, v0, v4

    sput-object v0, Landroid/support/constraint/a/a/k;->e:[Landroid/support/constraint/a/a/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/a/a/k;
    .locals 1

    const-class v0, Landroid/support/constraint/a/a/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/constraint/a/a/k;

    return-object p0
.end method

.method public static values()[Landroid/support/constraint/a/a/k;
    .locals 1

    sget-object v0, Landroid/support/constraint/a/a/k;->e:[Landroid/support/constraint/a/a/k;

    invoke-virtual {v0}, [Landroid/support/constraint/a/a/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/a/k;

    return-object v0
.end method
