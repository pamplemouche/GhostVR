.class public Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge$ImportantSitesCallback;
.implements Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge$OtherFormsOfBrowsingHistoryListener;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public A:Z

.field public w:I

.field public x:[Ljava/lang/String;

.field public y:[I

.field public z:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LJA0;

    invoke-direct {v0}, LJA0;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, LJ/N;->M8Id0UAo()I

    move-result v0

    .line 3
    iput v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->w:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->w:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->x:[Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->y:[I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->z:[Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->A:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableDialogAboutOtherFormsOfBrowsingHistory()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->A:Z

    return-void
.end method

.method public onImportantRegisterableDomainsReady([Ljava/lang/String;[Ljava/lang/String;[IZ)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    array-length p4, p1

    iget v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->w:I

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const-string v3, "History.ClearBrowsingData.NumImportant"

    invoke-static {v3, p4, v2, v1, v0}, LfV;->b(Ljava/lang/String;IIII)V

    .line 2
    array-length p4, p1

    invoke-static {p1, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->x:[Ljava/lang/String;

    .line 3
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->y:[I

    .line 4
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->z:[Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->w:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->x:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->y:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->z:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5
    iget-boolean p2, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->A:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
