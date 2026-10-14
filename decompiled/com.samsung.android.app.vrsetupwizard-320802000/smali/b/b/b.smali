.class public final enum Lb/b/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/b/b;

.field public static final enum b:Lb/b/b;

.field public static final enum c:Lb/b/b;

.field public static final enum d:Lb/b/b;

.field private static final synthetic e:[Lb/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lb/b/b;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lb/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/b;->a:Lb/b/b;

    new-instance v0, Lb/b/b;

    const/4 v2, 0x1

    const-string v3, "BASIC"

    invoke-direct {v0, v3, v2}, Lb/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/b;->b:Lb/b/b;

    new-instance v0, Lb/b/b;

    const/4 v3, 0x2

    const-string v4, "HEADERS"

    invoke-direct {v0, v4, v3}, Lb/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/b;->c:Lb/b/b;

    new-instance v0, Lb/b/b;

    const/4 v4, 0x3

    const-string v5, "BODY"

    invoke-direct {v0, v5, v4}, Lb/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/b;->d:Lb/b/b;

    const/4 v0, 0x4

    new-array v0, v0, [Lb/b/b;

    sget-object v5, Lb/b/b;->a:Lb/b/b;

    aput-object v5, v0, v1

    sget-object v1, Lb/b/b;->b:Lb/b/b;

    aput-object v1, v0, v2

    sget-object v1, Lb/b/b;->c:Lb/b/b;

    aput-object v1, v0, v3

    sget-object v1, Lb/b/b;->d:Lb/b/b;

    aput-object v1, v0, v4

    sput-object v0, Lb/b/b;->e:[Lb/b/b;

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

.method public static valueOf(Ljava/lang/String;)Lb/b/b;
    .locals 1

    const-class v0, Lb/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/b/b;

    return-object p0
.end method

.method public static values()[Lb/b/b;
    .locals 1

    sget-object v0, Lb/b/b;->e:[Lb/b/b;

    invoke-virtual {v0}, [Lb/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/b/b;

    return-object v0
.end method
