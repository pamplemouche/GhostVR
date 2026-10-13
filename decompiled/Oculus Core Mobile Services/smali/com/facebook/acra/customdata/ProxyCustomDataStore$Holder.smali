.class Lcom/facebook/acra/customdata/ProxyCustomDataStore$Holder;
.super Ljava/lang/Object;
.source "ProxyCustomDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/customdata/ProxyCustomDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field public static final CUSTOM_DATA:Lcom/facebook/acra/customdata/ProxyCustomDataStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/facebook/acra/customdata/ProxyCustomDataStore;

    invoke-direct {v0}, Lcom/facebook/acra/customdata/ProxyCustomDataStore;-><init>()V

    sput-object v0, Lcom/facebook/acra/customdata/ProxyCustomDataStore$Holder;->CUSTOM_DATA:Lcom/facebook/acra/customdata/ProxyCustomDataStore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
