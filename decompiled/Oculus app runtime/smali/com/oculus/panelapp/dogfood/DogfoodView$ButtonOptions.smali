.class final enum Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;
.super Ljava/lang/Enum;
.source "DogfoodView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/dogfood/DogfoodView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ButtonOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;

.field public static final enum DEFAULT:Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;

.field public static final enum RESET:Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 58
    new-instance v0, Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;->DEFAULT:Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;

    .line 59
    new-instance v0, Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;

    const/4 v2, 0x1

    const-string v3, "RESET"

    invoke-direct {v0, v3, v2}, Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;->RESET:Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;

    const/4 v0, 0x2

    .line 57
    new-array v0, v0, [Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;

    sget-object v3, Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;->DEFAULT:Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;

    aput-object v3, v0, v1

    sget-object v1, Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;->RESET:Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;->$VALUES:[Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;
    .locals 1

    .line 57
    const-class v0, Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;
    .locals 1

    .line 57
    sget-object v0, Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;->$VALUES:[Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;

    return-object v0
.end method
