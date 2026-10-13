.class public final enum Lcom/facebook/rti/push/client/FbnsAIDLOperation;
.super Ljava/lang/Enum;
.source "FbnsAIDLOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/push/client/FbnsAIDLOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/push/client/FbnsAIDLOperation;

.field public static final enum GET_ANALYTICS_CONFIG:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

.field public static final enum GET_APPS_STATISTICS:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

.field public static final enum GET_FLYTRAP_REPORT:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

.field public static final enum GET_PREF_BASED_CONFIG:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

.field public static final enum GET_PREF_IDS:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

.field public static final enum NOT_EXIST:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

.field public static final enum SET_ANALYTICS_CONFIG:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

.field public static final enum SET_PREF_BASED_CONFIG:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

.field public static final enum SET_PREF_IDS:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

.field private static final mLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/rti/push/client/FbnsAIDLOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHasReturn:Z

.field private final mOperationType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 10
    new-instance v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    const-string v2, "GET_PREF_BASED_CONFIG"

    invoke-direct {v1, v2, v0, v0, v5}, Lcom/facebook/rti/push/client/FbnsAIDLOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->GET_PREF_BASED_CONFIG:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    .line 11
    new-instance v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    const-string v2, "SET_PREF_BASED_CONFIG"

    invoke-direct {v1, v2, v5, v5, v0}, Lcom/facebook/rti/push/client/FbnsAIDLOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->SET_PREF_BASED_CONFIG:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    .line 17
    new-instance v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    const-string v2, "GET_APPS_STATISTICS"

    invoke-direct {v1, v2, v6, v6, v5}, Lcom/facebook/rti/push/client/FbnsAIDLOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->GET_APPS_STATISTICS:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    .line 19
    new-instance v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    const-string v2, "GET_ANALYTICS_CONFIG"

    invoke-direct {v1, v2, v7, v7, v5}, Lcom/facebook/rti/push/client/FbnsAIDLOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->GET_ANALYTICS_CONFIG:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    .line 20
    new-instance v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    const-string v2, "SET_ANALYTICS_CONFIG"

    invoke-direct {v1, v2, v8, v8, v0}, Lcom/facebook/rti/push/client/FbnsAIDLOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->SET_ANALYTICS_CONFIG:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    .line 22
    new-instance v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    const-string v2, "GET_FLYTRAP_REPORT"

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/rti/push/client/FbnsAIDLOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->GET_FLYTRAP_REPORT:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    .line 24
    new-instance v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    const-string v2, "GET_PREF_IDS"

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/rti/push/client/FbnsAIDLOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->GET_PREF_IDS:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    .line 25
    new-instance v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    const-string v2, "SET_PREF_IDS"

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/facebook/rti/push/client/FbnsAIDLOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->SET_PREF_IDS:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    .line 27
    new-instance v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    const-string v2, "NOT_EXIST"

    const/16 v3, 0x8

    const v4, 0x7fffffff

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/facebook/rti/push/client/FbnsAIDLOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->NOT_EXIST:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    .line 9
    const/16 v1, 0x9

    new-array v1, v1, [Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    sget-object v2, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->GET_PREF_BASED_CONFIG:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    aput-object v2, v1, v0

    sget-object v2, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->SET_PREF_BASED_CONFIG:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    aput-object v2, v1, v5

    sget-object v2, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->GET_APPS_STATISTICS:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    aput-object v2, v1, v6

    sget-object v2, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->GET_ANALYTICS_CONFIG:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    aput-object v2, v1, v7

    sget-object v2, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->SET_ANALYTICS_CONFIG:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->GET_FLYTRAP_REPORT:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->GET_PREF_IDS:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->SET_PREF_IDS:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->NOT_EXIST:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    aput-object v3, v1, v2

    sput-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->$VALUES:[Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    .line 29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->mLookup:Ljava/util/Map;

    .line 32
    invoke-static {}, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->values()[Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->mLookup:Ljava/util/Map;

    iget v5, v3, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->mOperationType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->mOperationType:I

    .line 45
    iput-boolean p4, p0, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->mHasReturn:Z

    .line 46
    return-void
.end method

.method public static fromOperationType(I)Lcom/facebook/rti/push/client/FbnsAIDLOperation;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->mLookup:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    .line 37
    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->NOT_EXIST:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/push/client/FbnsAIDLOperation;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/push/client/FbnsAIDLOperation;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->$VALUES:[Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    invoke-virtual {v0}, [Lcom/facebook/rti/push/client/FbnsAIDLOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    return-object v0
.end method


# virtual methods
.method public hasReturn()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->mHasReturn:Z

    return v0
.end method

.method public toOperationType()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->mOperationType:I

    return v0
.end method
