.class public final enum Landroid/support/constraint/a/a/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/constraint/a/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroid/support/constraint/a/a/f;

.field public static final enum b:Landroid/support/constraint/a/a/f;

.field private static final synthetic c:[Landroid/support/constraint/a/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/support/constraint/a/a/f;

    const/4 v1, 0x0

    const-string v2, "RELAXED"

    invoke-direct {v0, v2, v1}, Landroid/support/constraint/a/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/a/a/f;->a:Landroid/support/constraint/a/a/f;

    new-instance v0, Landroid/support/constraint/a/a/f;

    const/4 v2, 0x1

    const-string v3, "STRICT"

    invoke-direct {v0, v3, v2}, Landroid/support/constraint/a/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/a/a/f;->b:Landroid/support/constraint/a/a/f;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/support/constraint/a/a/f;

    sget-object v3, Landroid/support/constraint/a/a/f;->a:Landroid/support/constraint/a/a/f;

    aput-object v3, v0, v1

    sget-object v1, Landroid/support/constraint/a/a/f;->b:Landroid/support/constraint/a/a/f;

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/constraint/a/a/f;->c:[Landroid/support/constraint/a/a/f;

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

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/a/a/f;
    .locals 1

    const-class v0, Landroid/support/constraint/a/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/constraint/a/a/f;

    return-object p0
.end method

.method public static values()[Landroid/support/constraint/a/a/f;
    .locals 1

    sget-object v0, Landroid/support/constraint/a/a/f;->c:[Landroid/support/constraint/a/a/f;

    invoke-virtual {v0}, [Landroid/support/constraint/a/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/a/f;

    return-object v0
.end method
