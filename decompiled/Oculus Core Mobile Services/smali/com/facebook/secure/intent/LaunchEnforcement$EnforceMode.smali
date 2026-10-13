.class public final enum Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;
.super Ljava/lang/Enum;
.source "LaunchEnforcement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/secure/intent/LaunchEnforcement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnforceMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

.field public static final enum ENFORCE_EVERYWHERE:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

.field public static final enum OPEN_EVERYWHERE:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

.field public static final enum OPEN_EXCEPTION_ONLY:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

.field public static final enum OPEN_NONFB_AND_EXCEPTION_ONLY:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    const-string v1, "OPEN_EVERYWHERE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;->OPEN_EVERYWHERE:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    .line 22
    new-instance v0, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    const-string v1, "OPEN_NONFB_AND_EXCEPTION_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;->OPEN_NONFB_AND_EXCEPTION_ONLY:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    .line 27
    new-instance v0, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    const-string v1, "OPEN_EXCEPTION_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;->OPEN_EXCEPTION_ONLY:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    .line 30
    new-instance v0, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    const-string v1, "ENFORCE_EVERYWHERE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;->ENFORCE_EVERYWHERE:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    sget-object v1, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;->OPEN_EVERYWHERE:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;->OPEN_NONFB_AND_EXCEPTION_ONLY:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;->OPEN_EXCEPTION_ONLY:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;->ENFORCE_EVERYWHERE:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;->$VALUES:[Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    return-object v0
.end method

.method public static values()[Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;->$VALUES:[Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    invoke-virtual {v0}, [Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    return-object v0
.end method
