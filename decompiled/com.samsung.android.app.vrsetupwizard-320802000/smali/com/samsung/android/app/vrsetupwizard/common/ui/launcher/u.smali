.class final enum Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

.field public static final enum b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

.field public static final enum c:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

.field private static final synthetic d:[Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

    const/4 v1, 0x0

    const-string v2, "START"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

    const/4 v2, 0x1

    const-string v3, "CENTER"

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

    const/4 v3, 0x2

    const-string v4, "END"

    invoke-direct {v0, v4, v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;->c:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

    sget-object v4, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

    aput-object v4, v0, v1

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;->c:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;->d:[Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;
    .locals 1

    const-class v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;->d:[Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

    invoke-virtual {v0}, [Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

    return-object v0
.end method
