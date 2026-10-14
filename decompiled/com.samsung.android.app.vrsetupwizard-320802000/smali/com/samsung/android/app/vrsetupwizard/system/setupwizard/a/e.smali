.class public final enum Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

.field public static final enum b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

.field public static final enum c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

.field public static final enum d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

.field private static final synthetic e:[Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    const/4 v1, 0x0

    const-string v2, "LOW"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;->b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    const/4 v3, 0x2

    const-string v4, "HIGH"

    invoke-direct {v0, v4, v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;->c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    const/4 v4, 0x3

    const-string v5, "IMMEDIATE"

    invoke-direct {v0, v5, v4}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;->d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    sget-object v5, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    aput-object v5, v0, v1

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;->b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;->c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;->d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;->e:[Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;
    .locals 1

    const-class v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;->e:[Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    invoke-virtual {v0}, [Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    return-object v0
.end method
