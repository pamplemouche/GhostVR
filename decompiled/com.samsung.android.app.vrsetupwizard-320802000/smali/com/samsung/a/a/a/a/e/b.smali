.class public final enum Lcom/samsung/a/a/a/a/e/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/a/a/a/a/e/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/a/a/a/a/e/b;

.field public static final enum b:Lcom/samsung/a/a/a/a/e/b;

.field private static final synthetic f:[Lcom/samsung/a/a/a/a/e/b;


# instance fields
.field private c:Lcom/samsung/a/a/a/a/g/e;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/samsung/a/a/a/a/e/b;

    sget-object v3, Lcom/samsung/a/a/a/a/g/e;->a:Lcom/samsung/a/a/a/a/g/e;

    const-string v1, "DIAGNOSTIC_TERMS"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/a/a/a/a/e/b;-><init>(Ljava/lang/String;ILcom/samsung/a/a/a/a/g/e;ZZ)V

    sput-object v6, Lcom/samsung/a/a/a/a/e/b;->a:Lcom/samsung/a/a/a/a/e/b;

    new-instance v0, Lcom/samsung/a/a/a/a/e/b;

    sget-object v10, Lcom/samsung/a/a/a/a/g/e;->b:Lcom/samsung/a/a/a/a/g/e;

    const-string v8, "CUSTOM_TERMS"

    const/4 v9, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/a/a/a/a/e/b;-><init>(Ljava/lang/String;ILcom/samsung/a/a/a/a/g/e;ZZ)V

    sput-object v0, Lcom/samsung/a/a/a/a/e/b;->b:Lcom/samsung/a/a/a/a/e/b;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/a/a/a/a/e/b;

    sget-object v1, Lcom/samsung/a/a/a/a/e/b;->a:Lcom/samsung/a/a/a/a/e/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/a/a/a/a/e/b;->b:Lcom/samsung/a/a/a/a/e/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/a/a/a/a/e/b;->f:[Lcom/samsung/a/a/a/a/e/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/samsung/a/a/a/a/g/e;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/a/a/a/a/g/e;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/a/a/a/a/e/b;->c:Lcom/samsung/a/a/a/a/g/e;

    iput-boolean p4, p0, Lcom/samsung/a/a/a/a/e/b;->d:Z

    iput-boolean p5, p0, Lcom/samsung/a/a/a/a/e/b;->e:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/a/a/a/a/e/b;
    .locals 1

    const-class v0, Lcom/samsung/a/a/a/a/e/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/a/a/a/a/e/b;

    return-object p0
.end method

.method public static values()[Lcom/samsung/a/a/a/a/e/b;
    .locals 1

    sget-object v0, Lcom/samsung/a/a/a/a/e/b;->f:[Lcom/samsung/a/a/a/a/e/b;

    invoke-virtual {v0}, [Lcom/samsung/a/a/a/a/e/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/a/a/a/a/e/b;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/a/a/a/a/e/c;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/a/a/a/a/e/b;->d:Z

    :goto_0
    return v0
.end method

.method public b()Lcom/samsung/a/a/a/a/g/e;
    .locals 1

    sget-boolean v0, Lcom/samsung/a/a/a/a/e/c;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/a/a/a/a/g/e;->c:Lcom/samsung/a/a/a/a/g/e;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/a/a/a/a/e/b;->c:Lcom/samsung/a/a/a/a/g/e;

    :goto_0
    return-object v0
.end method

.method public c()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/a/a/a/a/e/c;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/a/a/a/a/e/b;->e:Z

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/a/a/a/a/e/b;->b()Lcom/samsung/a/a/a/a/g/e;

    move-result-object v0

    sget-object v1, Lcom/samsung/a/a/a/a/g/e;->a:Lcom/samsung/a/a/a/a/g/e;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
