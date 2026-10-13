.class public final enum Lcom/facebook/crudolib/urimap/UriCallerScope;
.super Ljava/lang/Enum;
.source "UriCallerScope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/crudolib/urimap/UriCallerScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/crudolib/urimap/UriCallerScope;

.field public static final enum FAMILY_APP:Lcom/facebook/crudolib/urimap/UriCallerScope;

.field public static final enum PUBLIC:Lcom/facebook/crudolib/urimap/UriCallerScope;

.field public static final enum SAME_APP:Lcom/facebook/crudolib/urimap/UriCallerScope;

.field public static final enum SAME_KEY_APP:Lcom/facebook/crudolib/urimap/UriCallerScope;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/facebook/crudolib/urimap/UriCallerScope;

    const-string v1, "SAME_APP"

    invoke-direct {v0, v1, v2}, Lcom/facebook/crudolib/urimap/UriCallerScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/crudolib/urimap/UriCallerScope;->SAME_APP:Lcom/facebook/crudolib/urimap/UriCallerScope;

    .line 7
    new-instance v0, Lcom/facebook/crudolib/urimap/UriCallerScope;

    const-string v1, "SAME_KEY_APP"

    invoke-direct {v0, v1, v3}, Lcom/facebook/crudolib/urimap/UriCallerScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/crudolib/urimap/UriCallerScope;->SAME_KEY_APP:Lcom/facebook/crudolib/urimap/UriCallerScope;

    .line 8
    new-instance v0, Lcom/facebook/crudolib/urimap/UriCallerScope;

    const-string v1, "FAMILY_APP"

    invoke-direct {v0, v1, v4}, Lcom/facebook/crudolib/urimap/UriCallerScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/crudolib/urimap/UriCallerScope;->FAMILY_APP:Lcom/facebook/crudolib/urimap/UriCallerScope;

    .line 9
    new-instance v0, Lcom/facebook/crudolib/urimap/UriCallerScope;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v5}, Lcom/facebook/crudolib/urimap/UriCallerScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/crudolib/urimap/UriCallerScope;->PUBLIC:Lcom/facebook/crudolib/urimap/UriCallerScope;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/crudolib/urimap/UriCallerScope;

    sget-object v1, Lcom/facebook/crudolib/urimap/UriCallerScope;->SAME_APP:Lcom/facebook/crudolib/urimap/UriCallerScope;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/crudolib/urimap/UriCallerScope;->SAME_KEY_APP:Lcom/facebook/crudolib/urimap/UriCallerScope;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/crudolib/urimap/UriCallerScope;->FAMILY_APP:Lcom/facebook/crudolib/urimap/UriCallerScope;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/crudolib/urimap/UriCallerScope;->PUBLIC:Lcom/facebook/crudolib/urimap/UriCallerScope;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/crudolib/urimap/UriCallerScope;->$VALUES:[Lcom/facebook/crudolib/urimap/UriCallerScope;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/crudolib/urimap/UriCallerScope;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/facebook/crudolib/urimap/UriCallerScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/crudolib/urimap/UriCallerScope;

    return-object v0
.end method

.method public static values()[Lcom/facebook/crudolib/urimap/UriCallerScope;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/facebook/crudolib/urimap/UriCallerScope;->$VALUES:[Lcom/facebook/crudolib/urimap/UriCallerScope;

    invoke-virtual {v0}, [Lcom/facebook/crudolib/urimap/UriCallerScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/crudolib/urimap/UriCallerScope;

    return-object v0
.end method
