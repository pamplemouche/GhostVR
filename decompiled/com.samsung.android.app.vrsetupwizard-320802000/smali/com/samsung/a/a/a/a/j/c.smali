.class public final enum Lcom/samsung/a/a/a/a/j/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/a/a/a/a/j/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/a/a/a/a/j/c;

.field public static final enum b:Lcom/samsung/a/a/a/a/j/c;

.field public static final enum c:Lcom/samsung/a/a/a/a/j/c;

.field private static final synthetic f:[Lcom/samsung/a/a/a/a/j/c;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/a/a/a/a/j/c;

    const/4 v1, 0x0

    const-string v2, "ONE_DEPTH"

    const-string v3, "\u0002"

    const-string v4, "\u0003"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/samsung/a/a/a/a/j/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/a/a/a/a/j/c;->a:Lcom/samsung/a/a/a/a/j/c;

    new-instance v0, Lcom/samsung/a/a/a/a/j/c;

    const/4 v2, 0x1

    const-string v3, "TWO_DEPTH"

    const-string v4, "\u0004"

    const-string v5, "\u0005"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/samsung/a/a/a/a/j/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/a/a/a/a/j/c;->b:Lcom/samsung/a/a/a/a/j/c;

    new-instance v0, Lcom/samsung/a/a/a/a/j/c;

    const/4 v3, 0x2

    const-string v4, "THREE_DEPTH"

    const-string v5, "\u0006"

    const-string v6, "\u0007"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/samsung/a/a/a/a/j/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/a/a/a/a/j/c;->c:Lcom/samsung/a/a/a/a/j/c;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/a/a/a/a/j/c;

    sget-object v4, Lcom/samsung/a/a/a/a/j/c;->a:Lcom/samsung/a/a/a/a/j/c;

    aput-object v4, v0, v1

    sget-object v1, Lcom/samsung/a/a/a/a/j/c;->b:Lcom/samsung/a/a/a/a/j/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/a/a/a/a/j/c;->c:Lcom/samsung/a/a/a/a/j/c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/a/a/a/a/j/c;->f:[Lcom/samsung/a/a/a/a/j/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/a/a/a/a/j/c;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/a/a/a/a/j/c;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/a/a/a/a/j/c;
    .locals 1

    const-class v0, Lcom/samsung/a/a/a/a/j/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/a/a/a/a/j/c;

    return-object p0
.end method

.method public static values()[Lcom/samsung/a/a/a/a/j/c;
    .locals 1

    sget-object v0, Lcom/samsung/a/a/a/a/j/c;->f:[Lcom/samsung/a/a/a/a/j/c;

    invoke-virtual {v0}, [Lcom/samsung/a/a/a/a/j/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/a/a/a/a/j/c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/j/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/j/c;->e:Ljava/lang/String;

    return-object v0
.end method
