.class public Lorg/chromium/third_party/android/datausagechart/NetworkStats;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final H:Ljava/lang/String;


# instance fields
.field public A:[I

.field public B:[I

.field public C:[J

.field public D:[J

.field public E:[J

.field public F:[J

.field public G:[J

.field public final w:J

.field public x:I

.field public y:[Ljava/lang/String;

.field public z:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LEb1;

    invoke-direct {v0}, LEb1;-><init>()V

    sput-object v0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->w:J

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->x:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->y:[Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->z:[I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->A:[I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->B:[I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->C:[J

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->D:[J

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->E:[J

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->F:[J

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->G:[J

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "FOREGROUND"

    return-object p0

    :cond_1
    const-string p0, "DEFAULT"

    return-object p0

    :cond_2
    const-string p0, "ALL"

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, ""

    .line 3
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "NetworkStats: elapsedRealtime="

    .line 4
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->w:J

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    const/4 v3, 0x0

    .line 5
    :goto_0
    iget v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->x:I

    if-ge v3, v4, :cond_0

    .line 6
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  iface="

    .line 7
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->y:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " uid="

    .line 8
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->z:[I

    aget v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " set="

    .line 9
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->A:[I

    aget v4, v4, v3

    invoke-static {v4}, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " tag="

    .line 10
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->B:[I

    aget v4, v4, v3

    const-string v5, "0x"

    .line 11
    invoke-static {v5}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " rxBytes="

    .line 13
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->C:[J

    aget-wide v5, v4, v3

    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v4, " rxPackets="

    .line 14
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->D:[J

    aget-wide v5, v4, v3

    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v4, " txBytes="

    .line 15
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->E:[J

    aget-wide v5, v4, v3

    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v4, " txPackets="

    .line 16
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->F:[J

    aget-wide v5, v4, v3

    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v4, " operations="

    .line 17
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->G:[J

    aget-wide v5, v4, v3

    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->w:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget p2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->x:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->y:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->z:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5
    iget-object p2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->A:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 6
    iget-object p2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->B:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 7
    iget-object p2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->C:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 8
    iget-object p2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->D:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 9
    iget-object p2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->E:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 10
    iget-object p2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->F:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 11
    iget-object p2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->G:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
