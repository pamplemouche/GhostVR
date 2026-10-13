.class public Lcom/facebook/graphservice/interfaces/GraphQLQuery;
.super Ljava/lang/Object;
.source "GraphQLQuery.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "graphservice-jni"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 20
    return-void
.end method

.method private constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/graphservice/interfaces/GraphQLQuery;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 27
    return-void
.end method


# virtual methods
.method public native cacheTtlSeconds()I
.end method

.method public native freshCacheTtlSeconds()I
.end method

.method public native hasAnalyticsHints()Z
.end method

.method public native queryName()Ljava/lang/String;
.end method

.method public native terminateAfterFreshResponse()Z
.end method
