.class final enum Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;
.super Ljava/lang/Enum;
.source "FragmentNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/navigation/FragmentNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TransitionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;

.field public static final enum REPLACE:Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;

    const-string v1, "REPLACE"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;->REPLACE:Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;

    sget-object v1, Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;->REPLACE:Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;->$VALUES:[Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;->$VALUES:[Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;

    invoke-virtual {v0}, [Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;

    return-object v0
.end method
