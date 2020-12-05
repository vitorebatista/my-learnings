import { Schema, model, Document } from 'mongoose'

interface UserInterface extends Document {
    email?: string
    firstName?: string
    lastName?: string
    fullname(): string
}

const UserSchema = new Schema({
  email: String,
  firstName: String,
  lastName: String
},
{
  timestamps: true
})

UserSchema.methods.fullname = function (): string {
  return this.firstName + '' + this.lastName
}

export default model<UserInterface>('User', UserSchema)
