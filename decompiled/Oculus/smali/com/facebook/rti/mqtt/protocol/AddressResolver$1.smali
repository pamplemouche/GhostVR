.class Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;
.super Ljava/lang/Object;
.source "AddressResolver.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/protocol/AddressResolver;->resolveAsync(Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

.field final synthetic val$hostName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/AddressResolver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;->this$0:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;->val$hostName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;
        }
    .end annotation

    .prologue
    .line 157
    const-string v0, "AddressResolver"

    const-string/jumbo v1, "resolveAsync executed"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;->val$hostName:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;->this$0:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;->val$hostName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->access$000(Lcom/facebook/rti/mqtt/protocol/AddressResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 159
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;->this$0:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->addOrUpdateAddressEntry(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    .line 160
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;->call()Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    move-result-object v0

    return-object v0
.end method
