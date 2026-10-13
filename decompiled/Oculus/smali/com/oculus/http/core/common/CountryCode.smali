.class public Lcom/oculus/http/core/common/CountryCode;
.super Ljava/lang/Object;
.source "CountryCode.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/oculus/http/core/common/CountryCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/http/core/common/CountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCollator:Ljava/text/Collator;


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final isoCode:Ljava/lang/String;

.field private final mKey:Ljava/text/CollationKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/oculus/http/core/common/CountryCode;->sCollator:Ljava/text/Collator;

    .line 69
    new-instance v0, Lcom/oculus/http/core/common/CountryCode$1;

    invoke-direct {v0}, Lcom/oculus/http/core/common/CountryCode$1;-><init>()V

    sput-object v0, Lcom/oculus/http/core/common/CountryCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/http/core/common/CountryCode;->isoCode:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/http/core/common/CountryCode;->displayName:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/oculus/http/core/common/CountryCode;->sCollator:Ljava/text/Collator;

    invoke-virtual {p0}, Lcom/oculus/http/core/common/CountryCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/http/core/common/CountryCode;->mKey:Ljava/text/CollationKey;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oculus/http/core/common/CountryCode;->isoCode:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/oculus/http/core/common/CountryCode;->displayName:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/oculus/http/core/common/CountryCode;->sCollator:Ljava/text/Collator;

    invoke-virtual {p0}, Lcom/oculus/http/core/common/CountryCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/http/core/common/CountryCode;->mKey:Ljava/text/CollationKey;

    .line 23
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/oculus/http/core/common/CountryCode;)I
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/http/core/common/CountryCode;->mKey:Ljava/text/CollationKey;

    iget-object v1, p1, Lcom/oculus/http/core/common/CountryCode;->mKey:Ljava/text/CollationKey;

    invoke-virtual {v0, v1}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/oculus/http/core/common/CountryCode;

    invoke-virtual {p0, p1}, Lcom/oculus/http/core/common/CountryCode;->compareTo(Lcom/oculus/http/core/common/CountryCode;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 43
    if-ne p0, p1, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    .line 46
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :cond_2
    check-cast p1, Lcom/oculus/http/core/common/CountryCode;

    .line 50
    iget-object v0, p0, Lcom/oculus/http/core/common/CountryCode;->mKey:Ljava/text/CollationKey;

    iget-object v1, p1, Lcom/oculus/http/core/common/CountryCode;->mKey:Ljava/text/CollationKey;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oculus/http/core/common/CountryCode;->mKey:Ljava/text/CollationKey;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/http/core/common/CountryCode;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oculus/http/core/common/CountryCode;->isoCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/oculus/http/core/common/CountryCode;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return-void
.end method
