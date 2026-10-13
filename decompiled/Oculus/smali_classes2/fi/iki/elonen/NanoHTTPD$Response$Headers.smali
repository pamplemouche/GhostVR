.class Lfi/iki/elonen/NanoHTTPD$Response$Headers;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Headers"
.end annotation


# instance fields
.field private final keysAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD$Response;


# direct methods
.method private constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response;)V
    .locals 2

    .prologue
    .line 1613
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response$Headers;->this$0:Lfi/iki/elonen/NanoHTTPD$Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1611
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$Headers;->keysAndValues:Ljava/util/List;

    .line 1614
    return-void
.end method

.method synthetic constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response;Lfi/iki/elonen/NanoHTTPD$1;)V
    .locals 0

    .prologue
    .line 1610
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD$Response$Headers;-><init>(Lfi/iki/elonen/NanoHTTPD$Response;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$Headers;->keysAndValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1619
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$Headers;->keysAndValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1620
    return-void
.end method

.method public getFirstValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1635
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$Headers;->keysAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1636
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$Headers;->keysAndValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$Headers;->keysAndValues:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1640
    :goto_1
    return-object v0

    .line 1635
    :cond_0
    add-int/lit8 v0, v1, -0x2

    move v1, v0

    goto :goto_0

    .line 1640
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public key(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1646
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$Headers;->keysAndValues:Ljava/util/List;

    mul-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$Headers;->keysAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public value(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1651
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$Headers;->keysAndValues:Ljava/util/List;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
