.class public final synthetic LTN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LlU;


# static fields
.field public static final a:LlU;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LTN0;

    invoke-direct {v0}, LTN0;-><init>()V

    sput-object v0, LTN0;->a:LlU;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Map;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
