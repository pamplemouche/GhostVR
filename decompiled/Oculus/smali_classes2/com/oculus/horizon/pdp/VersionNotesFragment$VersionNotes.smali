.class public Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;
.super Ljava/lang/Object;
.source "VersionNotesFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/pdp/VersionNotesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionNotes"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final changeLog:Ljava/lang/String;

.field public final releaseDate:Ljava/lang/String;

.field public final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes$1;

    invoke-direct {v0}, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;->version:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;->changeLog:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;->releaseDate:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;->version:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;->releaseDate:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;->changeLog:Ljava/lang/String;

    .line 123
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;->changeLog:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;->releaseDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    return-void
.end method
