.class public final enum Lcom/samsung/a/a/a/a/a/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/a/a/a/a/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/a/a/a/a/a/b;

.field public static final enum b:Lcom/samsung/a/a/a/a/a/b;

.field public static final enum c:Lcom/samsung/a/a/a/a/a/b;

.field public static final enum d:Lcom/samsung/a/a/a/a/a/b;

.field private static final synthetic f:[Lcom/samsung/a/a/a/a/a/b;


# instance fields
.field e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/a/a/a/a/a/b;

    const/4 v1, 0x0

    const-string v2, "DEVICE_CONTROLLER_DIR"

    const-string v3, "/v1/quotas"

    invoke-direct {v0, v2, v1, v3}, Lcom/samsung/a/a/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/a/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/a/b;

    new-instance v0, Lcom/samsung/a/a/a/a/a/b;

    const/4 v2, 0x1

    const-string v3, "DATA_DELETE"

    const-string v4, "/app/delete"

    invoke-direct {v0, v3, v2, v4}, Lcom/samsung/a/a/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/a/a/a/a/a/b;->b:Lcom/samsung/a/a/a/a/a/b;

    new-instance v0, Lcom/samsung/a/a/a/a/a/b;

    const-string v3, ""

    const/4 v4, 0x2

    const-string v5, "DLS_DIR"

    invoke-direct {v0, v5, v4, v3}, Lcom/samsung/a/a/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/a/a/a/a/a/b;->c:Lcom/samsung/a/a/a/a/a/b;

    new-instance v0, Lcom/samsung/a/a/a/a/a/b;

    const/4 v5, 0x3

    const-string v6, "DLS_DIR_BAT"

    invoke-direct {v0, v6, v5, v3}, Lcom/samsung/a/a/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/a/a/a/a/a/b;->d:Lcom/samsung/a/a/a/a/a/b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/a/a/a/a/a/b;

    sget-object v3, Lcom/samsung/a/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/a/b;

    aput-object v3, v0, v1

    sget-object v1, Lcom/samsung/a/a/a/a/a/b;->b:Lcom/samsung/a/a/a/a/a/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/a/a/a/a/a/b;->c:Lcom/samsung/a/a/a/a/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/a/a/a/a/a/b;->d:Lcom/samsung/a/a/a/a/a/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/a/a/a/a/a/b;->f:[Lcom/samsung/a/a/a/a/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/a/a/a/a/a/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/a/a/a/a/a/b;
    .locals 1

    const-class v0, Lcom/samsung/a/a/a/a/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/a/a/a/a/a/b;

    return-object p0
.end method

.method public static values()[Lcom/samsung/a/a/a/a/a/b;
    .locals 1

    sget-object v0, Lcom/samsung/a/a/a/a/a/b;->f:[Lcom/samsung/a/a/a/a/a/b;

    invoke-virtual {v0}, [Lcom/samsung/a/a/a/a/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/a/a/a/a/a/b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/a/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/a/b;->e:Ljava/lang/String;

    return-void
.end method
