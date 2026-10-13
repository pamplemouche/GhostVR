.class Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries$1;
.super Ljava/lang/Object;
.source "AddressEntries.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;-><init>(ILcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries$1;->this$0:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)I
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getPriority()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 42
    check-cast p1, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    check-cast p2, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries$1;->compare(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)I

    move-result v0

    return v0
.end method
