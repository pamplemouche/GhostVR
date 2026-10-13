.class public Lcom/oculus/vrshell/home/GraphQLPrefetchConstants;
.super Ljava/lang/Object;
.source "GraphQLPrefetchConstants.java"


# static fields
.field public static Queries:[Lcom/oculus/utils/GraphQLPrefetchQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/utils/GraphQLPrefetchQuery;

    const/4 v1, 0x0

    new-instance v2, Lcom/oculus/utils/GraphQLPrefetchQuery;

    const-string v3, "2604322102919505"

    const-string v4, "{\"alternativeSource\":null,\"cursor\":null,\"count\":4,\"feedSource\":null,\"section\":\"ALL\"}"

    const-string v5, "{\"services\":[\"HOME\",\"EXPLORE\"]}"

    invoke-direct {v2, v3, v4, v5}, Lcom/oculus/utils/GraphQLPrefetchQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/oculus/utils/GraphQLPrefetchQuery;

    const-string v3, "2784414544964528"

    const-string v4, "{\"hmdType\":\"MONTEREY\",\"shouldOnlyReturnFirstView\":true,\"storeIDOverride\":null,\"storeViewID\":null,\"storeViewTypes\":[\"LANDING_MENU_3D\"],\"useTestStore\":false,\"cursor\":null,\"count\":3}"

    const-string v5, "{\"services\":[\"STORE\"]}"

    invoke-direct {v2, v3, v4, v5}, Lcom/oculus/utils/GraphQLPrefetchQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/oculus/utils/GraphQLPrefetchQuery;

    const-string v3, "1965008633615609"

    const-string v4, "{\"hmdType\":\"MONTEREY\",\"storeIDOverride\":null,\"storeViewTypes\":[\"LANDING_MENU_3D\"],\"useTestStore\":false}"

    const-string v5, "{\"services\":[\"STORE\"]}"

    invoke-direct {v2, v3, v4, v5}, Lcom/oculus/utils/GraphQLPrefetchQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/vrshell/home/GraphQLPrefetchConstants;->Queries:[Lcom/oculus/utils/GraphQLPrefetchQuery;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
