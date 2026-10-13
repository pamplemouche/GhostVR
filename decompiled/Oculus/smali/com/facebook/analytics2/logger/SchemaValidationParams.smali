.class public Lcom/facebook/analytics2/logger/SchemaValidationParams;
.super Ljava/lang/Object;
.source "SchemaValidationParams.java"


# instance fields
.field private final mEventExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/facebook/analytics2/logger/SchemaValidationParams;->mEventName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/facebook/analytics2/logger/SchemaValidationParams;->mEventExtras:Ljava/util/Map;

    .line 15
    return-void
.end method


# virtual methods
.method getEventExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SchemaValidationParams;->mEventExtras:Ljava/util/Map;

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SchemaValidationParams;->mEventName:Ljava/lang/String;

    return-object v0
.end method
